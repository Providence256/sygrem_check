import 'package:path/path.dart';
import 'package:qr_scanner/features/documents/data/models/document_model.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static DatabaseHelper get instance => _instance;

  DatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();

    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'qr_scanner.db');

    return await openDatabase(path, version: 1, onCreate: _createDb);
  }

  Future<void> _createDb(Database db, int version) async {
    await db.execute('''
      CREATE TABLE historique(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        typeRedevance TEXT,
        numeroDeclaration TEXT,
        numero TEXT,
        navire TEXT,
        scanUrl TEXT,
        scanDate TEXT
      )
''');
  }

  /// INSERT
  Future<void> insertFacture(SavedData data) async {
    final db = await database;

    await db.insert(
      'historique',
      data.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<bool> existsByUrl(String scanUrl) async {
    final db = await database;

    final result = await db.query(
      'historique',
      where: 'scanUrl = ?',
      whereArgs: [scanUrl],
      limit: 1,
    );

    return result.isNotEmpty;
  }

  ///GET ALL
  Future<List<SavedData>> getAllFactures() async {
    final db = await database;

    final result = await db.query('historique', orderBy: 'id DESC');

    return result.map((e) => SavedData.fromJson(e)).toList();
  }
}
