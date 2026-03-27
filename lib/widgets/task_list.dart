import 'package:flutter/material.dart';
import 'package:lab1/model/task_handler.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
   const TaskList({super.key, required List<ListTile> children});

   @override
      Widget build(BuildContext context) {

        var taskHandler = context.watch<TaskHandler>();
        var tasks = taskHandler.testTasks();

   return ListView(children: [
      for (final task in tasks) ListTile(title: Text(task.title)),
   ]);
 }
    
}