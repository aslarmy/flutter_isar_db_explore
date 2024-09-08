import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'entities/course.dart';
import 'entities/peon.dart';
import 'entities/student.dart';
import 'entities/teacher.dart';

class DbService {
  final Future<Isar> db;

  DbService._(this.db);

  static Future<DbService> create() async {
    final isar = _openDb();
    return DbService._(isar);
  }

  static Future<Isar> _openDb() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [CourseSchema, StudentSchema, TeacherSchema, PeonSchema],
        directory: dir.path,
      );
    }
    return Future.value(Isar.getInstance());
  }
}
