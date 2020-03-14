import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todey/models/Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(title: "Buy Milkmaid"),
    Task(title: "Buy BreadButter"),
    Task(title: "Buy eggroll"),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  addTask(String taskTitle) {
    final task = Task(title: taskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  updateTask(Task task) {
    task.toggleisDone();
    notifyListeners();
  }

  deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
