import 'package:flutter/material.dart';
import 'package:lab1/model/types.dart';
import 'package:lab1/model/task_handler.dart';
import 'package:lab1/widgets/task_list.dart';
import 'package:lab1/views/add_view.dart';
import 'package:provider/provider.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Things todo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: _actions(context),
      ),
      body: TaskList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddView(),
            ),
          );
        },
        tooltip: 'Add todo',
        child: const Icon(Icons.add),
      ),
    );
  }

  List<Widget> _actions(BuildContext context) {
    return [_filterMenu(context)];
  }

  Widget _filterMenu(BuildContext context) {
    var taskHandler = Provider.of<TaskHandler>(context, listen: false);

    return PopupMenuButton<FilterType>(
      initialValue: taskHandler.mode,
      onSelected: (FilterType item) {
        taskHandler.setMode(item);
      },
      itemBuilder: (BuildContext context) => [
        const PopupMenuItem<FilterType>(
          value: FilterType.all,
          child: Text('All'),
        ),
        const PopupMenuItem<FilterType>(
          value: FilterType.done,
          child: Text('Done'),
        ),
        const PopupMenuItem<FilterType>(
          value: FilterType.undone,
          child: Text('Undone'),
        ),
      ],
    );
  }
}