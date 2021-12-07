import 'package:flutter/material.dart';
import 'screens/all_tasks.dart';
/* ddd */
void main() {
  runApp(const ToDoList());
}

class ToDoList extends StatelessWidget {

  const ToDoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
 
    return MaterialApp(
      title: 'TO-DO Application',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TO-DO Application'),
        ),
        body: ListView(
          children: [
            oneTask,
          ],
        ),
      ),
    );
  }
}