class Task {
  String name, details;
  bool completed = false;

  static List<Task> _tasks = [
    Task('Choose topic', 'testing desc'),
    Task('Drink coffee', null),
    Task('Prepare codelab', null),
    Task('Update SDK', 'Flutter'),
  ];

  static List<Task> get tasks => _tasks;

  Task(this.name, this.details);
}
