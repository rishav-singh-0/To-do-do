import 'dart:collection';

import 'package:flutter/foundation.dart';
// material package apready contains foundation package but using this to keep things minimal
import 'package:record/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'This is the example of a Task', isDone: false),
    Task(name: 'You can Delete any task by long pressing it', isDone: false),
    Task(name: 'Once done tick the checkbox', isDone: true),
    Task(name: 'Add new tasks from bottom plus button', isDone: false),
  ];

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  UnmodifiableListView get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }
}
