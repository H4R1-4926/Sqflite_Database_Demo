// ignore_for_file: avoid_function_literals_in_foreach_calls, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';

import 'package:sqflite_demo/Domain/Model/student_db/student_db.dart';

final ValueNotifier<List<StudentDb>> studentNotifier = ValueNotifier([]);

late Database _db;

Future<void> initializeDB() async {
  try {
    _db = await openDatabase(
      'students.db',
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
            'CREATE TABLE Student (id INTEGER PRIMARY KEY, name TEXT, class_name TEXT, age TEXT)');
      },
    );
  } catch (e) {
    log('failed : $_db');
  }
}

Future<void> addStudent(StudentDb value) async {
  try {
    await _db.rawInsert(
        'INSERT INTO Student (name,class_name,age) VALUES(?,?,?)',
        [value.name, value.className, value.age]);
    studentNotifier.notifyListeners();
  } catch (e) {
    log('err: $e');
  }
}

Future<void> getAllStudent() async {
  final details = await _db.rawQuery('SELECT * FROM Student');
  log(details.toString());
  studentNotifier.value.clear();
  details.forEach((e) {
    final d = StudentDb.fromJson(e);

    studentNotifier.value.add(d);
    studentNotifier.notifyListeners();
  });
}

Future<void> deleteStudent(int? id) async {
  await _db.rawDelete('DELETE FROM Student WHERE id = $id');
  getAllStudent();
  studentNotifier.notifyListeners();
}
