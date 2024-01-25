import 'package:embrance/dashboard/dashboard_screen.dart';
import 'package:embrance/home/alumni_connect/alumni_connect_detail_screen.dart';
import 'package:embrance/home/alumni_connect/alumni_connect_schedule_meeting_screen.dart';
import 'package:embrance/home/alumni_connect/alumni_connect_screen.dart';
import 'package:embrance/home/home_screen.dart';
import 'package:embrance/news/news_screen.dart';
import 'package:embrance/notifications/notification_screen.dart';
import 'package:embrance/profile/login/login_screen.dart';
import 'package:embrance/profile/profile_screen.dart';
import 'package:embrance/profile/splash/splash_screen.dart';
import 'package:get/get.dart';

import '../home/alumni_connect/alumni_connect_chat_screen.dart';
import '../news/news_detail_screen.dart';

class AppRoutes{

  static String DASHBOARD_ROUTE = "/dashboard";
  static String HOME_ROUTE = "/home";
  static String NEWS_ROUTE = "/news";
  static String NEWS_DETAIL_ROUTE = "/news_detail";
  static String NOTIFICATION_ROUTE = "/notification";

  static String SENIOR_CONNECT_ROUTE = "/senior_connect";
  static String ALUMNI_CONNECT_ROUTE = "/alumni_connect";
  static String ALUMNI_DETAIL_ROUTE = "/alumni_detail";
  static String ALUMNI_CONNECT_SCHEDULE_ROUTE = "/alumni_schedule";
  static String ALUMNI_CONNECT_CHAT_ROUTE = "/alumni_chat";
  static String LOGIN_ROUTE = "/login";
  static String SPLASH_ROUTE = "/splash";

  static Duration duration = const Duration(milliseconds: 500);
  static appRoutes() => [


    GetPage(
      name: LOGIN_ROUTE,
      page: () => LoginView(),
      transitionDuration: duration,
    ),

    GetPage(
      name: SPLASH_ROUTE,
      page: () => SplashView(),
      transitionDuration: duration,
    ),
    GetPage(
      name: DASHBOARD_ROUTE,
      page: () => DashboardView(),
      transitionDuration: duration,
      children: [
        GetPage(
          name: ALUMNI_CONNECT_ROUTE,
          page: () => AlumniConnectView(),
          transitionDuration: duration,
          children: [
            GetPage(name: ALUMNI_DETAIL_ROUTE, page: () => AlumniConnectDetailView(),transitionDuration: duration,),
            GetPage(name: ALUMNI_CONNECT_SCHEDULE_ROUTE, page: () => AlumniConnectMeetingView(),transitionDuration: duration,),
            GetPage(name: ALUMNI_CONNECT_CHAT_ROUTE, page: () => AlumniConnectChatScreen(),transitionDuration: duration,)
          ]
        ),
      ]
    ),


    GetPage(
      name: HOME_ROUTE,
      page: () => HomeView(),
      transitionDuration: duration,
    ),
    GetPage(
      name: NEWS_ROUTE,
      page: () => NewsView(),
      transitionDuration: duration,
      children: [
        GetPage(
          name: NEWS_DETAIL_ROUTE,
          page: () => NewsDetailView(),
          transitionDuration: duration,
        ),
      ]
    ),

    GetPage(
      name: '/profile',
      page: () => ProfileView(),
      //middlewares: [MyMiddelware()],
      transitionDuration: duration,
    ),

    GetPage(
      name: NOTIFICATION_ROUTE,
      page: () => NotificationView(),
      //middlewares: [MyMiddelware()],
      transitionDuration: duration,
    ),

  ];

}
