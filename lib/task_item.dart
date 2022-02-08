import 'package:flutter/cupertino.dart';
import 'package:todo_flutter/task.dart';

class TaskItem extends StatelessWidget {
  TaskItem({Key? key, required this.task}) : super(key: key);
  Task task;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(task.content),
    );
  }
}
