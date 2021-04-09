import 'package:newsio/grpc_generated/newsio.pb.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

abstract class DatabaseService {
  static Database _db;
  static int get _version => 1;
  static Future<void> intit() async {
    if (_db != null) {
      return;
    }
    try {
      String _path = await getDatabasesPath() + 'newsio';
      print("DataBase Path :" + _path);
      _db = await openDatabase(_path, version: _version, onCreate: onCreate);
      print(_db.transaction);
    } catch (ex) {
      print("Exception Occured: " + ex.toString());
    }
  }

  static void onCreate(Database db, int version) async {
    return await db.execute(
        "CREATE TABLE techNews (id INTEGER PRIMARY KEY NOT NULL, title STRING ,description STRING, author String, imgLink String, dateOfPublishing STRING)");
  }

  static void queryNews(String table) async {
    List<Map<String, dynamic>> listOfNews = await _db.query(table);
    print("lenght of table : ${listOfNews.length}");
  }

  static Future<int> insert(String table, News news) async {
    print("Inserting into table : ${news.title}");
    return await _db.insert(table, toMap(news));
  }

  static Map<String, dynamic> toMap(News news) {
    print("reaching here");
    return {
      'author': news.author,
      'title': news.title,
      'description': news.description,
      'imgLink': news.imageLink,
      'dateOfPublishing': news.date,
      'id': news.id
    };
  }
}
