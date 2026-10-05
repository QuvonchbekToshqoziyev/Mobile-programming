import 'package:flutter/material.dart';

class Task4Feedback extends StatefulWidget {
  const Task4Feedback({super.key});

  @override
  State<Task4Feedback> createState() => _Task4FeedbackState();
}

class _Task4FeedbackState extends State<Task4Feedback> {
  bool loading = false;

  Future<void> runOperation() async {
    setState(() => loading = true);
    await Future<void>.delayed(const Duration(seconds: 3));
    if (!mounted) return;
    setState(() => loading = false);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Operation completed'),
        action: SnackBarAction(label: 'Undo', onPressed: () {}),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: loading
          ? const CircularProgressIndicator()
          : FilledButton(
              onPressed: runOperation,
              child: const Text('Run 3-second operation'),
            ),
    );
  }
}
