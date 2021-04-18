import 'dart:collection';

import 'package:flutter/foundation.dart';
// material package apready contains foundation package but using this to keep things minimal
import 'package:record/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Make this todo list app', isDone: false),
    Task(name: 'Work on fire drone', isDone: false),
    Task(name: 'Fill internship form', isDone: true),
  ];

  UnmodifiableListView get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    tasks.add(task);
  }
}
