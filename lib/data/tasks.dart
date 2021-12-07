import 'package:flutter/cupertino.dart';

class Task {
  Task({this.id = 0, this.content = '', completed, DateTime? createdAt })
      : createdAt = createdAt ?? DateTime.now(),
        completed = completed == 1 ? true : false;

  int id;
  String content;
  bool completed;
  DateTime createdAt;
}