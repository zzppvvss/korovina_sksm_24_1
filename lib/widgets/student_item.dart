import 'package:flutter/material.dart';
import 'package:korovina_sksm_24_1/models/student.dart';

class StudentsItem extends StatelessWidget {
  const StudentsItem({super.key, required this.student});
  final Student student;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: genderColors[student.gender],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          children: [
            Text(
              "${student.firstName} ${student.lastName}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Icon(departmentIcons[student.department]),
            const SizedBox(width: 10),
            Text("${student.grade}"),
          ],
        ),
      ),
    );
  }
}
