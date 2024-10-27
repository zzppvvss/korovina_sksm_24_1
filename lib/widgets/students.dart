import 'package:flutter/material.dart';
import 'package:korovina_sksm_24_1/models/student.dart';
import 'package:korovina_sksm_24_1/widgets/student_item.dart';

class Students extends StatefulWidget {
  const Students({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StudentsState();
  }
}

class _StudentsState extends State<Students> {
  final List<Student> _students_list = [
    Student(
        firstName: 'Pedro',
        lastName: 'Pascal',
        department: Department.law,
        grade: 99,
        gender: Gender.male),
    Student(
        firstName: 'Lara',
        lastName: 'Croft',
        department: Department.finance,
        grade: 95,
        gender: Gender.female),
    Student(
        firstName: 'Lain',
        lastName: 'Iwakura',
        department: Department.it,
        grade: 99,
        gender: Gender.female),
    Student(
        firstName: 'Eric',
        lastName: 'Draven',
        department: Department.medical,
        grade: 70,
        gender: Gender.male)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students'),
      ),
      body: Column(
        children: [
          Expanded(
            child: 
              StudentsList(students: _students_list),
          ),
        ]
      ),
    );
  }
}

class StudentsList extends StatelessWidget {
  const StudentsList({super.key, required this.students});
  final List<Student> students;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: students.length,
      itemBuilder: (contest, index) =>
          StudentsItem(student: students[index]),
    );
  }
}
