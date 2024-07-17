import 'package:flutter/material.dart';
import 'package:sqflite_demo/Infrastructure/db_function.dart';

import 'package:sqflite_demo/Presentation/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDB();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(useMaterial3: false),
        debugShowCheckedModeBanner: false,
        home: const HomePage());
  }
}
