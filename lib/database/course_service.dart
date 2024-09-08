import 'package:flutter_isar_db_explore/database/db_service.dart';
import 'package:flutter_isar_db_explore/database/entities/course.dart';
import 'package:isar/isar.dart';

class CourseService {
  final Isar _isar;

  CourseService._(this._isar);

  static Future<CourseService> create() async {
    final dbService = await DbService.create();
    return CourseService._(await dbService.db);
  }

  Future<void> saveCourse(Course newCourse) async {
    _isar.writeTxnSync<int>(() => _isar.courses.putSync(newCourse));
  }

  Future<List<Course>> getAllCourses() async {
    return await _isar.courses.where().findAll();
  }
}
