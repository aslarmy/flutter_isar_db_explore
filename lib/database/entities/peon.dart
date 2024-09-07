import 'package:isar/isar.dart';

part 'peon.g.dart';

@Collection()
class Peon {
  @Name("id")
  Id? peonId;
  String? name;
  String? fatherName;
  @Index(unique: true)
  String? contactNo;
  @Index(unique: true)
  String? email;
}
