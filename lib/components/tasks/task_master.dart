import 'package:flutter/material.dart';
import 'task_preview.dart';
import '../../data/tasks.dart';

class Task_Manage extends StatelessWidget {
  //
  final task = Task_Preview();
  //final task2 = Task_Preview();
  //final task3 = Task_Preview();

  final tasks = List<Task>.generate(
    15, (int index) {
    return Task(
        id: index,
        content: 'Task n°' + index.toString()
    );}
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TO-DO Application',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TO-DO Application'),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: tasks.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              //color: Colors.amber[colorCodes[index]],
              child: Center(child: Text('Entry ${tasks[index]}')),
            );
          }
        ),
      ),
    );
  }
}