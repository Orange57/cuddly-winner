import 'package:flutter/material.dart';
import '../components/tasks/task_preview.dart';

class AllTasks extends StatefulWidget {
  const AllTasks({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AllTasks> createState() => _AllTasksState();
}

class _AllTasksState extends State<AllTasks> {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return MaterialApp(
      title: 'TO-DO Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Task_Preview(title: 'TO-DO Application'),
    );
  }
}