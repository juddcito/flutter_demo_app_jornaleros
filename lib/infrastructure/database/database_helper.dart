import 'dart:io';

import 'package:flutter_demo_app_jornaleros/infrastructure/models/trabajador_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';


class DatabaseHelper {
  static const _databaseName = "MyDatabase3.db";
  static const _databaseVersion = 1;

  // tabla de usuarios
  static const table = 'users';
  static const columnId = 'id';
  static const columnUser = 'user';
  static const columnPassword = 'password';
  static const columnModelData = 'model_data';

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static late Database _database;
  Future<Database> get database async {
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {

    // tabla de usuarios

    await db.execute('''
          CREATE TABLE $table (
            $columnId INTEGER PRIMARY KEY,
            $columnUser TEXT NOT NULL,
            $columnPassword TEXT NOT NULL,
            $columnModelData TEXT NOT NULL
          )
          '''
      );
  }

  // métodos de usuarios para autenticación por reconocimiento facial
  Future<int> insert(TrabajadorModel user) async {
    Database db = await instance.database;
    return await db.insert(table, user.toMap());
  }

  Future<List<TrabajadorModel>> queryAllUsers() async {
    Database db = await instance.database;
    List<Map<String, dynamic>> users = await db.query(table);
    return users.map((u) => TrabajadorModel.fromMap(u)).toList();
  }

  Future<int> deleteAll() async {
    Database db = await instance.database;
    return await db.delete(table);
  }
}
