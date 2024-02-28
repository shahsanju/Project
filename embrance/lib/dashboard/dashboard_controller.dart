import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../network/SocketConnection.dart';


class DashboardController extends GetxController{
  final SocketConnection socketConnection = Get.find<SocketConnection>();
  var bottomTabIndex = 0;

   var userName = "".obs;
  final user = GetStorage();

  @override
  void onInit() {
    if(user.read("username")!=null) {
      userName.value = user.read("username");
    }
    print("CALLED");
    super.onInit();
  }

  // @override
  // void onClose() {
  //   socketConnection.leaveSocket(user.read("userID"));
  //   super.onClose();
  // }
  void selectedBottomBarTabIndex(int index){
    bottomTabIndex = index;
    update();
  }

  String userType(){
    return user.read("user_type");
  }



}