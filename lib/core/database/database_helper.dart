import 'package:otex_app/core/database/database_seeder.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  DatabaseHelper._init();
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB("otex.db");
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, onCreate: _createDB, version: 1);
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute("""
    CREATE TABLE Categories (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
    );
""");

 await db.execute("""
    CREATE TABLE Sub_Categories (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      image TEXT NULL, 
      name TEXT NOT NULL,
      category_id INTERGER NOT NULL,
      FOREIGN KEY (category_id) REFERENCES categories (id) ON DELETE CASCADE
    );
""");

 await db.execute("""
    CREATE TABLE Products (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      image TEXT NULL, 
      name TEXT NOT NULL,
      price REAL NOT NULL,
      discount_percent REAL DEFAULT 0 NOT NULL,
      sold_count INTEGER DEFAULT 0 NOT NULL,
      subcategory_id INTEGER NOT NULL,
      FOREIGN KEY (subcategory_id) REFERENCES subcategories (id) ON DELETE CASCADE
    );
""");

    await DatabaseSeeder().seedDatabase(db);
  }
}
