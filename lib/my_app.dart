import 'package:flutter/material.dart';
import 'package:flutter_isar_db_explore/database/entities/course.dart';
import 'package:flutter_isar_db_explore/database/entities/peon.dart';
import 'package:flutter_isar_db_explore/database/entities/student.dart';
import 'package:flutter_isar_db_explore/database/entities/teacher.dart';
import 'package:flutter_isar_db_explore/database/isar_service.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final service = IsarService();

  @override
  void initState() {
    super.initState();
    _saveData();
  }

  void _saveData() async {
    final newCourse = Course()
      ..title = "Algorithm Part-1"
      ..id = 1;
    final newCourse2 = Course()
      ..title = "Data Structure Part-1"
      ..id = 2;
    final newCourse3 = Course()
      ..title = "Java Programming Part-1"
      ..id = 3;
    List<Course> courseList = [];
    courseList.add(newCourse);
    courseList.add(newCourse2);
    courseList.add(newCourse3);

    final newStudent = Student()
      ..name = "Sk. Nath"
      ..id = 1
      ..courses.addAll(courseList);

    final newTeacher = Teacher()
      ..name = "Mr. John"
      ..id = 1
      ..course.value = newCourse;

    service.saveCourse(newCourse);
    service.saveCourse(newCourse2);
    service.saveCourse(newCourse3);

    service.saveStudent(newStudent);

    service.saveTeacher(newTeacher);

    final peon1 = Peon()
      ..peonId = 24001
      ..name = "Mr. Tareq"
      ..fatherName = "Mr. X"
      ..email = "tareq@gmail.com"
      ..contactNo = "01760377898";
    final peon2 = Peon()
      ..peonId = 24002
      ..name = "Mr. Alauddin"
      ..fatherName = null
      ..email = "alauddin@gmail.com"
      ..contactNo = "01860377898";
    service.savePeon(peon1);
    service.savePeon(peon2);
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('data'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
