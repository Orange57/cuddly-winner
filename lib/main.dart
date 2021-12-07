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
    
    //final allTasks = new AllTasks(title: 'TO-DO Application');

    return MaterialApp(
      title: 'TO-DO Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AllTasks(),
    );
  }
}