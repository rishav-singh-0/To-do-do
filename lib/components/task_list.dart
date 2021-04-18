import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:record/components/task_tile.dart';
import 'package:record/models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              toggleCheckbox: (checkboxState) {
                // setState(() {
                //   widget.tasks[index].toggleDone();
                // });
              });
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
