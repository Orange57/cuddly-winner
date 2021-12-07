import 'package:flutter/material.dart';
import 'task_preview.dart';
import '../../data/tasks.dart';

class Task_Manage extends StatelessWidget {
  //

  final tasks = List<Task>.generate(
    15, (int index) {
    return Task(
        id: index,
        content: 'Name task'.toString()
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
          itemBuilder: (context, index) {
            final item = tasks[index];

            return ListTile(
              title: item.getContent(),
              subtitle: item.getId(),
            );
          },
        ),
      ),
    );
  }
}