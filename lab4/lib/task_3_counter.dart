import 'package:flutter/material.dart';

class Task3Counter extends StatefulWidget {
  const Task3Counter({super.key});

  @override
  State<Task3Counter> createState() => _Task3CounterState();
}

class _Task3CounterState extends State<Task3Counter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Counter value'),
        Text(
          '$counter',
          style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
        ),
        FloatingActionButton(
          onPressed: () => setState(() => counter++),
          child: const Icon(Icons.add),
        ),
        OutlinedButton(
          onPressed: () => setState(() => counter = 0),
          child: const Text('Reset Counter'),
        ),
      ],
    );
  }
}
