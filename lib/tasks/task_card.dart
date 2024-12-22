import 'package:flutter/material.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({super.key, required this.title});

  final String title;

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool isDone = false;

  void _toggleDone() {
    setState(() {
      isDone = !isDone;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        child: ListTile(
          leading: Checkbox(
            value: isDone,
            onChanged: (value) => _toggleDone(),
          ),
          title: Text(
            widget.title,
            style: TextStyle(
                fontWeight: (isDone) ? FontWeight.normal : FontWeight.bold,
                decoration: (isDone)
                    ? TextDecoration.lineThrough
                    : TextDecoration.none),
          ),
          // subtitle: const Text("Task description"),
        ),
      ),
    );
  }
}
