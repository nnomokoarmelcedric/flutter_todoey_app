import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({required this.addTaskScreenCB});

  final Function addTaskScreenCB;

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
                addTaskScreenCB(tasktitle);
                // print(tasktitle);
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
