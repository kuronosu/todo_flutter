import 'package:flutter/material.dart';
import 'package:todo_flutter/task.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  _AddTaskPageState createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  final myController = TextEditingController();

  void onAdd() {
    final content = myController.text.trim();
    if (content.isNotEmpty) {
      Navigator.pop(context, Task(content: content));
    } else {
      Navigator.pop(context);
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 45,
        backgroundColor: const Color(0xFF302B3B),
        title: const Text('New task'),
      ),
      body: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                autofocus: true,
                controller: myController,
                decoration: const InputDecoration(hintText: 'Your task'),
                onSubmitted: (value) => onAdd(),
              ),
              TextButton.icon(
                onPressed: onAdd,
                icon: const Icon(Icons.add, size: 18),
                label: const Text("Add"),
              )
            ],
          )),
    );
  }
}
