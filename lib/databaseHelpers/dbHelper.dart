import 'package:sqflite/sqlite_api.dart';

class DbHelper {
  static String DbName="muhasebem13.db";
 static void createDb(Database db, int newVersion) async {
    await db.execute("CREATE TABLE chartDatas(id INTEGER PRIMARY KEY, x TEXT, y REAL, y1 REAL, y2 REAL)");
    await db.execute("CREATE TABLE gdpDatas(id INTEGER PRIMARY KEY, containent TEXT, gdp INTEGER)");
  }
}
