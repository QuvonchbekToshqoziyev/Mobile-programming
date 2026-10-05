import 'package:flutter/material.dart';

class Task10Structure extends StatelessWidget {
  const Task10Structure({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          elevation: 4,
          margin: const EdgeInsets.all(16),
          child: ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Student Profile'),
            subtitle: const Text('Flutter Laboratory Work 4'),
            trailing: IconButton(
              icon: const Icon(Icons.info),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Profile selected')),
                );
              },
            ),
          ),
        ),
        const ExpansionTile(
          leading: Icon(Icons.flutter_dash),
          title: Text('What is Flutter?'),
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Flutter is a framework for building cross-platform apps '
                'with Dart.',
              ),
            ),
          ],
        ),
        const ExpansionTile(
          leading: Icon(Icons.code),
          title: Text('What is setState?'),
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'setState tells Flutter to rebuild a StatefulWidget after '
                'its data changes.',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
