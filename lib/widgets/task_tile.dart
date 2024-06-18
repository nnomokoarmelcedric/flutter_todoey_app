import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/tasks.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {required this.isChecked,
      required this.title,
      required this.checkBoxCallBack,
      required this.onLongPress});
  final bool isChecked;
  final String title;
  final void Function(bool?) checkBoxCallBack;
  final void Function() onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: onLongPress,
        title: Text(
          title,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked, onChanged: checkBoxCallBack,
          // onChanged: toggleCheckBoxState,
        ));
  }
}
