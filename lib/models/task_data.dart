import 'package:flutter/foundation.dart';
// material package apready contains foundation package but using this to keep things minimal
import 'package:record/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Make this todo list app', isDone: false),
    Task(name: 'Work on fire drone', isDone: false),
    Task(name: 'Fill internship form', isDone: true),
  ];

  int get taskCount {
    return tasks.length;
  }
}
