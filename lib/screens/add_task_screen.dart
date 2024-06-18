import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late String tasktitle;
    return Container(
      padding: EdgeInsets.fromLTRB(55, 10, 55, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 33,
            ),
          ),
          TextField(
            onChanged: (value) {
              tasktitle = value;
            },
            autofocus: true,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.lightBlueAccent),
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlueAccent, width: 3),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlueAccent, width: 3),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            color: Colors.lightBlueAccent,
            child: TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(tasktitle);
                print(tasktitle);
                Navigator.pop(context);
              },
              child: Text(
                "Add",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
