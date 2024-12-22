import 'package:flutter/material.dart';
import 'package:todo_list/tasks/new_task_screen.dart';
import 'package:todo_list/tasks/task_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _todos = ["First task"];

  void _navigateNewTask() async {
    final task = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => const NewTaskScreen()));

    if (task != null) {
      _addTask(task);
    }
  }

  void _addTask(String task) {
    setState(() {
      _todos.add(task);
    });
  }

  void _removeTask(int index) {
    setState(() {
      _todos.removeAt(index);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Task deleted."),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My TODO List"),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateNewTask,
        child: const Icon(Icons.add),
      ),
      body: (_todos.isEmpty)
          ? const Center(child: Text("No tasks yet."))
          : ListView.separated(
              itemCount: _todos.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                final todo = _todos[index];
                return Dismissible(
                  key: Key(todo),
                  onDismissed: (direction) => _removeTask(index),
                  child: TaskCard(
                    title: todo,
                  ),
                );
              },
            ),
    );
  }
}
