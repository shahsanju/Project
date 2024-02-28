import 'package:embrance/home/alumni_connect/model/MeetingModel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../home/alumni_connect/model/ChatMessage.dart';
class SqliteService {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();

    return openDatabase(
      join(path, 'database.db'),
      onCreate: (database, version) async {
        await database.execute(
            "CREATE TABLE chats(id INTEGER PRIMARY KEY AUTOINCREMENT,sender TEXT NOT NULL,receiver TEXT NOT NULL,messageContent TEXT NOT NULL,messageType TEXT NOT NULL,timeChat TEXT NOT NULL)",
        );
        await database.execute(
          "CREATE TABLE meetings(id INTEGER PRIMARY KEY AUTOINCREMENT,sender TEXT NOT NULL,receiver TEXT NOT NULL,messageContent TEXT NOT NULL,meetingMode TEXT NOT NULL,dateMeetings TEXT NOT NULL,timeMeetings TEXT NOT NULL,senderName TEXT NOT NULL)",
        );
      },
      version: 1,
    );
  }

  Future<int> addNew(ChatMessage note) async {
    final Database db = await initializeDB();
    final id = await db.insert(
        'chats', note.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
    return id;
  }

  Future<int> addNewInvitation(MeetingModel note) async {
    final Database db = await initializeDB();
    final id = await db.insert(
        'meetings', note.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
    return id;
  }

  Future<List<ChatMessage>> getItems(String currentUser,String otherUser) async {
    final db = await initializeDB();
    final List<Map<String, Object?>> queryResult = await db.query('chats', where: " ((sender=${currentUser} or receiver=${currentUser}) and (sender=${otherUser} or receiver=${otherUser}))",orderBy: "id desc");
    return queryResult.map((e) => ChatMessage.fromMap(e)).toList();
  }

  Future<List<ChatMessage>> getChatUsers(String currentUser) async {
    final db = await initializeDB();
    final List<Map<String, Object?>> queryResult = await db.rawQuery("select * from chats where (sender=${currentUser} or receiver=${currentUser})");
    return queryResult.map((e) => ChatMessage.fromMap(e)).toList();
  }

  Future<List<MeetingModel>> getMeetingItems(String currentUser) async {
    final db = await initializeDB();
    final List<Map<String, Object?>> queryResult = await db.query('meetings', where: " receiver=${currentUser} or sender=${currentUser}",orderBy: "id desc");
    return queryResult.map((e) => MeetingModel.fromMap(e)).toList();
  }
}