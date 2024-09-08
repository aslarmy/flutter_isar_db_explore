
import 'package:flutter/material.dart';
import 'package:flutter_isar_db_explore/database/entities/course.dart';
import 'package:flutter_isar_db_explore/database/entities/peon.dart';
import 'package:flutter_isar_db_explore/database/entities/student.dart';
import 'package:flutter_isar_db_explore/database/entities/teacher.dart';
import 'package:flutter_isar_db_explore/database/course_service.dart';
import 'package:flutter_isar_db_explore/database/peon_service.dart';
import 'package:flutter_isar_db_explore/database/student_service.dart';
import 'package:flutter_isar_db_explore/database/teacher_service.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _savePeons() async {
    final peonService = await PeonService.create();
  //  final teacherService = await TeacherService.create();
   // final teachers = await teacherService.getAllTeacher();

    List<Peon> peonList = [];
/*    for (int i = 1; i <= 100; i++) {
      // get the maximum peon id from the service
      int maxId = await peonService.getMaxPeonId();

      // if maxId is zero, set it to 2401000
      if (maxId == 0) {
        maxId = 2401000;
      }
      // Increment the maxId for the new peon
      maxId++;

      // create a new peon instant and assign values
      Peon peon1 = Peon()
        ..id = maxId
        ..name = "Mr. Tareq"
        ..fatherName = "Mr. X"
        ..email = "$maxId-tareq@gmail.com"
        */ /*  ..teacher.value = teachers.first*/ /*
        ..contactNo = "0176-$maxId";
      // set new peon to peon list
      peonList.add(peon1);

      // save the new peon to the database
      //  peonService.savePeon(peon1);

      // log('dbLog: Peon $maxId saved successfully');
    }*/
    int id = 2401001;
    Peon peon1 = Peon()
      ..id = id
      ..name = "Mr. Tareq"
      ..fatherName = "Mr. X"
      ..email = "$id-tareq@gmail.com"
      /*  ..teacher.value = teachers.first*/
      ..contactNo = "0176-$id";
    // set new peon to peon list
    peonList.add(peon1);

    id = 2401002;
    peon1 = Peon()
      ..id = id
      ..name = "Mr. Tareq"
      ..fatherName = "Mr. X"
      ..email = "$id-tareq@gmail.com"
      /*  ..teacher.value = teachers.first*/
      ..contactNo = "0176-$id";
    // set new peon to peon list
    peonList.add(peon1);

    id = 2401003;
    peon1 = Peon()
      ..id = id
      ..name = "Mr. Tareq"
      ..fatherName = "Mr. X"
      ..email = "$id-tareq@gmail.com"
      /*  ..teacher.value = teachers.first*/
      ..contactNo = "0176-$id";
    // set new peon to peon list
    peonList.add(peon1);

    id = 2401004;
    peon1 = Peon()
      ..id = id
      ..name = "Mr. Tareq"
      ..fatherName = "Mr. X"
      ..email = "$id-tareq@gmail.com"
      /*  ..teacher.value = teachers.first*/
      ..contactNo = "0176-$id";
    // set new peon to peon list
    peonList.add(peon1);

    id = 2401005;
    peon1 = Peon()
      ..id = id
      ..name = "Mr. Tareq"
      ..fatherName = "Mr. X"
      ..email = "$id-tareq@gmail.com"
      /*  ..teacher.value = teachers.first*/
      ..contactNo = "0176-$id";
    // set new peon to peon list
    peonList.add(peon1);

    await peonService.saveAllPeon(peonList);
  }

  void _saveStudents() async {
    final courseService = await CourseService.create();
    final courses = await courseService.getAllCourses();
    final studentService = await StudentService.create();

    final newStudent1 = Student()
      ..name = "Sk. Nath"
      ..courses.addAll(courses.getRange(0, 2))
      ..id = 1;
    final newStudent2 = Student()
      ..name = "Roman Hossain"
      ..courses.addAll(courses.getRange(2, 3))
      ..id = 2;
    final newStudent3 = Student()
      ..name = "Irfan Hossain"
      ..courses.addAll(courses.getRange(1, 2))
      ..id = 3;

    studentService.saveStudent(newStudent1);
    studentService.saveStudent(newStudent2);
    studentService.saveStudent(newStudent3);
  }

  void _saveTeachers() async {
    final courseService = await CourseService.create();
    final courses = await courseService.getAllCourses();
    final teacherService = await TeacherService.create();

    final newTeacher1 = Teacher()
      ..name = "Mr. John"
      ..course.value = courses.first
      ..id = 1;
    final newTeacher2 = Teacher()
      ..name = "Mr. Jack"
      ..course.value = courses.last
      ..id = 2;
    final newTeacher3 = Teacher()
      ..name = "Mr. Gates"
      ..course.value = courses[1]
      ..id = 3;
    final newTeacher4 = Teacher()
      ..name = "Mr. Mark"
      ..course.value = courses[2]
      ..id = 4;

    teacherService.saveTeacher(newTeacher1);
    teacherService.saveTeacher(newTeacher2);
    teacherService.saveTeacher(newTeacher3);
    teacherService.saveTeacher(newTeacher4);
  }

  void _saveCourses() async {
    final courseService = await CourseService.create();
    final newCourse1 = Course()
      ..title = "Algorithm Part-1"
      ..id = 1;
    final newCourse2 = Course()
      ..title = "Data Structure Part-1"
      ..id = 2;
    final newCourse3 = Course()
      ..title = "Java Programming Part-1"
      ..id = 3;
    final newCourse4 = Course()
      ..title = "Java Script Part-1"
      ..id = 4;

    courseService.saveCourse(newCourse1);
    courseService.saveCourse(newCourse2);
    courseService.saveCourse(newCourse3);
    courseService.saveCourse(newCourse4);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: _saveCourses,
                      child: const Text(
                        'Save Courses',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: _saveTeachers,
                      child: const Text(
                        'Save Teachers',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: _saveStudents,
                      child: const Text(
                        'Save Students',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: _savePeons,
                      child: const Text(
                        'Save Peons',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
