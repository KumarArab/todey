import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function toggleCheckBox;
  final Function longPressCallback;

  TaskTile(
      {this.title,
      this.isChecked,
      this.toggleCheckBox,
      this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressCallback,
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'Sen',
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          activeColor: Color(0xff403a3e),
          onChanged: toggleCheckBox,
          value: isChecked,
        ));
  }
}
