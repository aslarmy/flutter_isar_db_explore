import 'package:flutter_isar_db_explore/database/entities/course.dart';
import 'package:isar/isar.dart';

part 'teacher.g.dart';

@Collection()
class Teacher {
  Id? id;
  @Index(unique: true)
  late String name;
  final course = IsarLink<Course>();
}
