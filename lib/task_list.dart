import 'package:flutter/material.dart';

import 'model.dart';

class TaskListView extends StatefulWidget {
  @override
  _TaskListViewState createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {
  void toggleTask(Task task) {
    setState(() {
      task.completed = !task.completed;
    });
  }

  Widget _listTile(Task task) {
    return ListTile(
      leading: IconButton(
        icon: (task.completed)
            ? Icon(Icons.check_circle)
            : Icon(Icons.radio_button_unchecked),
        onPressed: () => toggleTask(task),
      ),
      title: Text(task.name),
      subtitle: (task.details != null) ? Text(task.details) : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasks'),
      ),
      body: ListView(
        children: <Widget>[
          for (final task in Task.tasks) _listTile(task),
        ],
      ),
    );
  }
}
