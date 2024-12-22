import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart' as sql;



class sqlheler {

  static Future<sql.Database> Mydata() async {
    return sql.openDatabase('datauserdb.db', version: 1,
        onCreate: (sql.Database database, int version) async {
          await createTable(database);
        });
  }

  static Future<void> createTable(sql.Database database) async {
    await database.execute("""CREATE TABLE notes(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name TEXT,
    email TEXT,
    password Text,
    ) """);
  }

  static Future<int> Addnewuser(String name, String email,String password) async {
    final db = await sqlheler.Mydata();
    final data = {"name": name, "email": email,'password':password};
    final id = await db.insert("notes", data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  static Future<List<Map<String, dynamic>>> readnotes() async {
    final db = await sqlheler.Mydata();
    return db.query("notes", orderBy: "id");
  }

  static Future<int> updatenotes(int id, String newnotes, String newsubnote) async {
    final db = await sqlheler.Mydata();
    final newdata = {
      "title": newnotes,
      "subtitle": newsubnote,
      "createAt": DateTime.now().toString(),
    };
    final result = await db.update('notes', newdata, where: "id=?", whereArgs: [id]);
    return result;
  }

  static Future <void> delete(int id) async {
    final db = await sqlheler.Mydata();
    try {
      await db.delete('notes', where: "id=?", whereArgs: [id]);
    }
    catch (obj) {
      debugPrint("something is wrong");
    }
  }

}
