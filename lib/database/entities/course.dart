import 'package:flutter_isar_db_explore/database/entities/student.dart';
import 'package:flutter_isar_db_explore/database/entities/teacher.dart';
import 'package:isar/isar.dart';

part 'course.g.dart';

@Collection()
class Course {
  Id? id;
  @Index(unique: true)
  late String title;

  @Backlink(to: "course")
  final teacher = IsarLink<Teacher>();
  @Backlink(to: "courses")
  final students = IsarLinks<Student>();
}
