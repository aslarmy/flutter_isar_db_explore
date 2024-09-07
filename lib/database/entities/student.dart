import 'package:flutter_isar_db_explore/database/entities/course.dart';
import 'package:isar/isar.dart';

part 'student.g.dart';

@Collection()
class Student {
  Id? id;
  @Index(unique: true)
  late String name;
  final courses = IsarLinks<Course>();
}
