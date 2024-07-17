import 'package:flutter/material.dart';

import 'package:sqflite_demo/Domain/Model/student_db/student_db.dart';
import 'package:sqflite_demo/Infrastructure/db_function.dart';

class AddScreen extends StatelessWidget {
  AddScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController classController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Student'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                label: const Text('Name'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              controller: ageController,
              decoration: InputDecoration(
                label: const Text('Age'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              controller: classController,
              decoration: InputDecoration(
                label: const Text('Class'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  foregroundColor: WidgetStatePropertyAll(Colors.pinkAccent)),
              onPressed: () {
                final name = nameController.text.trim();
                final age = ageController.text.trim();
                final className = classController.text.trim();
                if (name.isNotEmpty || age.isNotEmpty || className.isNotEmpty) {
                  final d =
                      StudentDb(name: name, age: age, className: className);
                  addStudent(d);
                  getAllStudent();

                  Navigator.pop(context);
                }
              },
              child: const Text('Submit'))
        ],
      ),
    );
  }
}
