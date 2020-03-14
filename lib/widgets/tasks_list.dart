import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todey/models/task_data.dart';
import 'package:todey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              title: taskdata.tasks[index].title,
              isChecked: taskdata.tasks[index].isDone,
              toggleCheckBox: (value) {
                taskdata.updateTask(taskdata.tasks[index]);
              },
              longPressCallback: () {
                taskdata.deleteTask(taskdata.tasks[index]);
              },
            );
          },
          itemCount: taskdata.taskCount,
        );
      },
    );
  }
}
