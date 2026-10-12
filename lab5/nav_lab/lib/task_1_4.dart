import 'package:flutter/material.dart';

class One extends StatelessWidget {
  static const routeName = '/task-1-4/step-1';

  const One({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Step One')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Next'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Two()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Two extends StatelessWidget {
  const Two({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Step Two')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Next'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Three()),
            );
          },
        ),
      ),
    );
  }
}

class Three extends StatelessWidget {
  const Three({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Step Three')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Next'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Four()),
            );
          },
        ),
      ),
    );
  }
}

class Four extends StatelessWidget {
  const Four({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Step Four')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Finish'),
          onPressed: () {
            Navigator.popUntil(
              context,
              (route) => route.settings.name == One.routeName,
            );
          },
        ),
      ),
    );
  }
}
