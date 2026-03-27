import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Things todo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ), 
        body: ListView(
          children: [
            ListTile(title: Text('DAT216/TIG091')),
            ListTile(title: Text('Lab1 Todos')),
            ListTile(title: Text('En rad till')),
        ],
      ),
      );
  }
}
