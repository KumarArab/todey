class Task {
  String title;
  bool isDone;

  Task({this.title, this.isDone = false});

  toggleisDone() {
    isDone = !isDone;
  }
}
