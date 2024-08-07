import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:reciepe_app/data/models/recipe_model.dart';
import 'package:sqflite/sqflite.dart';

class RecipeProvider {
  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('recipes.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE recipes (
            id TEXT PRIMARY KEY,
            name TEXT,
            details TEXT,
            ingredients TEXT,
            rating REAL,
            likes INTEGER
          )
        ''');
        await _insertInitialData(db);
      },
    );
  }

  Future<void> _insertInitialData(Database db) async {
    final String response = await rootBundle.loadString('assets/recipes.json');
    final List<dynamic> data = json.decode(response);

    for (var recipe in data) {
      await db.insert('recipes', {
        'id': recipe['id'],
        'name': recipe['name'],
        'details': recipe['details'],
        'ingredients': json.encode(recipe['ingredients']), // Encode ingredients as JSON string
        'rating': recipe['rating'],
        'likes': recipe['likes'],
      });
    }
  }

  Future<List<RecipeModel>> fetchRecipes() async {
    final db = await database;
    final maps = await db.query('recipes');

    if (maps.isNotEmpty) {
      return maps.map((recipe) {
        return RecipeModel.fromJson({
          ...recipe,
          'ingredients': json.decode(recipe['ingredients'] as String) // Decode ingredients JSON string
        });
      }).toList();
    } else {
      throw Exception('No recipes found');
    }
  }

  Future<void> updateRecipe(RecipeModel recipe) async {
    final db = await database;
    await db.update(
      'recipes',
      {
        ...recipe.toJson(),
        'ingredients': json.encode(recipe.ingredients) // Encode ingredients as JSON string
      },
      where: 'id = ?',
      whereArgs: [recipe.id],
    );
  }
}
