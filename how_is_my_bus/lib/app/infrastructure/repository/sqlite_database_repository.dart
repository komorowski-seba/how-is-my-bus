import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../../../core/interfaces/database_interface.dart';

class SqliteDatabaseRepository implements DatabaseInterface {
  static final SqliteDatabaseRepository instance = SqliteDatabaseRepository._init();
  static Database? _database;

  SqliteDatabaseRepository._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('how_is_my_bus.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB
    );
  }

  Future _createDB(Database db, int version) async {
    // Define your table structures here
    await db.execute('''
      CREATE TABLE buses (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        routeNumber TEXT NOT NULL,
        status TEXT NOT NULL
      )
    ''');
  }

  //
  // // Example: Insert Data
  // Future<int> insertBus(Map<String, dynamic> row) async {
  //   final db = await instance.database;
  //   return await db.insert('buses', row);
  // }
  //
  // // Example: Query Data
  // Future<List<Map<String, dynamic>>> queryAllBuses() async {
  //   final db = await instance.database;
  //   return await db.query('buses');
  // }
  //
  // Future<void> close() async {
  //   final db = await _database;
  //   if (db != null) {
  //     await db.close();
  //   }
  // }
}