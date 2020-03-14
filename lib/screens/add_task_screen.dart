import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todey/models/Task.dart';
import 'package:todey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String taskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Add Task",
              style: TextStyle(
                fontSize: 35.0,
                color: Color(0xff403a3e),
              ),
            ),
            TextField(
              onChanged: (value) {
                taskTitle = value;
              },
              autofocus: true,
              textAlign: TextAlign.center,
              cursorColor: Color(0xff403a3e),
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff403a3e), width: 3.0),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff403a3e), Color(0xffBE5869)],
                ),
              ),
              child: FlatButton(
                child: Text("Add"),
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(taskTitle);
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
