import 'package:flutter/material.dart';

class Task7List extends StatefulWidget {
  const Task7List({super.key});

  @override
  State<Task7List> createState() => _Task7ListState();
}

class _Task7ListState extends State<Task7List> {
  final items = List<int>.generate(20, (index) => index + 1);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Dismissible(
          key: ValueKey(item),
          background: Container(
            color: Colors.red,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 20),
            child: const Icon(Icons.delete, color: Colors.white),
          ),
          onDismissed: (_) {
            setState(() => items.remove(item));
          },
          child: ListTile(
            leading: CircleAvatar(child: Text('$item')),
            title: Text('List item $item'),
          ),
        );
      },
    );
  }
}
