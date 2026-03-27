import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
   const TaskList({super.key, required List<ListTile> children});

   @override
      Widget build(BuildContext context) {
         return ListView(children: [
            ListTile(title: Text('DAT216/TIG091')),
            ListTile(title: Text('Lab1 Todos')),
            ListTile(title: Text('En rad till')),
         ]);
      }
}