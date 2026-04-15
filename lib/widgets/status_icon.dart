import 'package:flutter/material.dart';
import 'package:lab1/model/task.dart';
import 'package:lab1/model/task_handler.dart';
import 'package:provider/provider.dart';

class StatusIcon extends StatelessWidget {
  const StatusIcon(this.task, {super.key});
  final Task task;

  @override
Widget build(BuildContext context) {

   var taskHandler = context.watch<TaskHandler>();
   var tasks = taskHandler.testTasks();

return ListView(
  children: [
    for (final task in tasks)
      ListTile(
        leading: StatusIcon(task),
        title: Text(task.title),
        onTap: () {
          taskHandler.toggleTask(task);
        },
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            taskHandler.deleteTask(task);
          },
        ),
      ),
  ],
);
 }
}
