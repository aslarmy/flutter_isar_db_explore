import 'package:flutter_isar_db_explore/database/db_service.dart';
import 'package:flutter_isar_db_explore/database/entities/student.dart';
import 'package:isar/isar.dart';

class StudentService {
  final Isar _isar;

  StudentService._(this._isar);

  static Future<StudentService> create() async {
    final dbService = await DbService.create();
    return StudentService._(await dbService.db);
  }

  Future<void> saveStudent(Student newStudent) async {
    _isar.writeTxnSync<int>(() => _isar.students.putSync(newStudent));
  }

}
