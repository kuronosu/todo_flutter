import 'package:flutter/material.dart';
import 'package:todo_flutter/task.dart';
import 'package:todo_flutter/task_item.dart';

class TaskList extends StatelessWidget {
  TaskList({Key? key, required this.tasks}) : super(key: key);

  List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 70),
      child: ListView.separated(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          itemBuilder: (context, index) => TaskItem(task: tasks[index]),
          separatorBuilder: (context, index) =>
              const Divider(color: Colors.white60),
          itemCount: tasks.length),
    );
  }
}
