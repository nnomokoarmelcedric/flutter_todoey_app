import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskdata, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskdata.tasks[index];
          return TaskTile(
            isChecked: task.isDone,
            title: task.name,
            onLongPress: () {
              taskdata.deleteTask(task);
            },
            checkBoxCallBack: (check) {
              taskdata.updateTask(task);
            },
          );
        },
        itemCount: taskdata.tasknumber,
      );
    });
  }
}
