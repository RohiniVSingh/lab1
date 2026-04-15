import 'package:flutter/material.dart';
import 'package:lab1/model/task_handler.dart';
import 'package:provider/provider.dart';

class AddView extends StatefulWidget {
  const AddView({super.key});

  @override
  State<AddView> createState() => _AddViewState();
}

class _AddViewState extends State<AddView> {
  String taskTitle = '';

  @override
  Widget build(BuildContext context) {
    final taskHandler = Provider.of<TaskHandler>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ADD VIEW TEST 123'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          onChanged: (value) {
            taskTitle = value;
          },
          decoration: const InputDecoration(
            labelText: 'What todo',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('before addTask');
          taskHandler.addTask(taskTitle);
          print('after addTask');
          Navigator.pop(context);
        },
        tooltip: 'Done',
        child: const Icon(Icons.done),
      ),
    );
  }
}