import 'dart:async';
import 'dart:io';

import 'package:mobile_app/core/dir_manager.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseManager {
  static const String dbName = 'db.sqlite';
  static const int actualVersion = 1;
  late final Future<Database> _dbFuture = _initDB();

  Future<Database> db() {
    return _dbFuture;
  }

  Future<Database> _initDB() async {
    Directory appDir = DirectoryManager.appDir();
    String dbPath = appDir.path + dbName;
    Database db =
        await openDatabase(dbPath, version: actualVersion, onCreate: _onCreate);
    return db;
  }

  FutureOr<void> _onCreate(Database db, int version) async {
    _createTags(db, version);
  }

  FutureOr<void> _createTags(Database db, int version) async {
    await db.execute('''
    create table Tags
(
    id INTEGER not null
        primary key,
    label VARCHAR(80)
);
''');
  }
}
