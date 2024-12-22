import 'package:flutter/material.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  final _key = GlobalKey<FormState>();

  String taskName = "";

  void _saveForm() {
    final isValid = _key.currentState?.validate();
    if (isValid == true) {
      _key.currentState?.save();
      Navigator.of(context).pop(taskName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New task"),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.edit),
                  label: Text(
                    "Task name",
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Field can't be empty!";
                  }
                  return null;
                },
                onSaved: (newValue) => taskName = newValue!,
              ),
              TextFormField(
                minLines: 3,
                maxLines: 5,
                decoration: const InputDecoration(
                  icon: Icon(Icons.book),
                  label: Text(
                    "Task description",
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: _saveForm,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.save),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Save"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
