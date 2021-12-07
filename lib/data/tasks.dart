import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task {
  Task({this.id = 0, this.content = 'Name Task', completed, DateTime? createdAt })
      : createdAt = createdAt ?? DateTime.now(),
        completed = completed == 1 ? true : false;

  int id;
  String content;
  bool completed;
  DateTime createdAt;

  Widget getId()
  {
    return Text(
      'ID : ' + id.toString(),
    );
  }

  Widget getContent()
  {
    return Text(
      content,
    );
  }
}