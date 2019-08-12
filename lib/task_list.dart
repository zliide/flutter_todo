import 'package:flutter/material.dart';

import 'model.dart';

class TaskListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasks'),
      ),
      body: ListView(
        children: <Widget>[
          for (final task in Task.tasks)
            ListTile(
              leading: IconButton(
                icon: (task.completed)
                    ? Icon(Icons.check_circle)
                    : Icon(Icons.radio_button_unchecked),
                onPressed: null,
              ),
              title: Text(task.name),
              subtitle: (task.details != null) ? Text(task.details) : null,
            ),
        ],
      ),
    );
  }
}
