import 'package:flutter/material.dart';
import 'task_preview.dart';

class Task_Manage extends StatelessWidget {
  //
  final taskPreview = Task_Preview();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TO-DO Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: taskPreview,
    );
  }
}