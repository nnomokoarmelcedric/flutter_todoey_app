import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/tasks.dart';

class TasksList extends StatefulWidget {
  TasksList({required this.tasks});
  final List<Tasks> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
          title: widget.tasks[index].name,
          checkBoxCallBack: (check) {
            setState(() {
              widget.tasks[index].isdonned();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
