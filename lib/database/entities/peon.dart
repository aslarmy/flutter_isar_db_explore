import 'package:flutter_isar_db_explore/database/entities/teacher.dart';
import 'package:isar/isar.dart';

part 'peon.g.dart';

@Collection()
class Peon {
  Id? id;
  String? name;
  String? fatherName;
  @Index(unique: true)
  String? contactNo;
  @Index(unique: true)
  String? email;
  final teacher = IsarLink<Teacher>();
}
