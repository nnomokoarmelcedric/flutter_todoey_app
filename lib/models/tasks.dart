class Tasks {
  String name;
  bool isDone;
  Tasks({required this.name, this.isDone = false});

  void isdonned() {
    this.isDone = !isDone;
  }
}
