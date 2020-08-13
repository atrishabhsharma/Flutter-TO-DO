import 'package:To_do/model/task.dart';
import 'package:flutter/material.dart';

import 'Task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  TaskList(this.tasks);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          tasktitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxcallback: ((checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          }),
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
