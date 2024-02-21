import 'package:flutter/material.dart';
import 'package:sqflite_demo/Infrastructure/db_function.dart';
import 'package:sqflite_demo/Presentation/add_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    getAllStudent();
    return ValueListenableBuilder(
      valueListenable: studentNotifier,
      builder: (context, details, _) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Students'),
          ),
          body: ListView.builder(
            itemCount: details.length,
            itemBuilder: (context, index) {
              final det = details[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Text('${det.name}'),
                  tileColor: Colors.pinkAccent,
                  title: Text('${det.className}'),
                  subtitle: Text('${det.age}'),
                  trailing: IconButton(
                      onPressed: () {
                        deleteStudent(det.id);
                      },
                      icon: const Icon(Icons.delete)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                ),
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddScreen(),
                  ));
            },
            backgroundColor: Colors.black,
            foregroundColor: Colors.pinkAccent,
            child: const Center(
              child: Icon(Icons.add),
            ),
          ),
        );
      },
    );
  }
}
