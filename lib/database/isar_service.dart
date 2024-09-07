import 'package:flutter_isar_db_explore/database/entities/course.dart';
import 'package:flutter_isar_db_explore/database/entities/peon.dart';
import 'package:flutter_isar_db_explore/database/entities/student.dart';
import 'package:flutter_isar_db_explore/database/entities/teacher.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDb();
  }

  Future<void> saveCourse(Course newCourse) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.courses.putSync(newCourse));
  }

  Future<void> saveStudent(Student newStudent) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.students.putSync(newStudent));
  }

  Future<void> saveTeacher(Teacher newTeacher) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.teachers.putSync(newTeacher));
  }

  Future<void> savePeon(Peon peon) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.peons.putSync(peon));
  }

  Future<Isar> openDb() async {
    final directory = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [CourseSchema, StudentSchema, TeacherSchema, PeonSchema],
        directory: directory.path,
        inspector: true,
      );
    }
    return Future.value(Isar.getInstance());
  }
}
