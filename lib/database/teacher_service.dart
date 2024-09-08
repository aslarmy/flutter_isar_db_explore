import 'package:flutter_isar_db_explore/database/db_service.dart';
import 'package:flutter_isar_db_explore/database/entities/teacher.dart';
import 'package:isar/isar.dart';

class TeacherService {
  final Isar _isar;

  TeacherService._(this._isar);

  static Future<TeacherService> create() async {
    final dbService = await DbService.create();
    return TeacherService._(await dbService.db);
  }

  Future<void> saveTeacher(Teacher newTeacher) async {
    _isar.writeTxnSync<int>(() => _isar.teachers.putSync(newTeacher));
  }

  Future<List<Teacher>> getAllTeacher() async {
    return await _isar.teachers.where().findAll();
  }

}
