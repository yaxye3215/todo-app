// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

import 'package:flutter/material.dart';

import 'package:todo_app/model/task_model.dart';

class TaskProvider extends ChangeNotifier {
  List<Task> tasks = [];
  void addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void removeTask(String id) {
    tasks.removeWhere((task) => task.id == id);
    notifyListeners();
  }
}
