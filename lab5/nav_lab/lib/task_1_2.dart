import 'package:flutter/material.dart';

class Screen_A extends StatelessWidget {
  const Screen_A({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen A (Task)')),
      body: Center(
        child: ElevatedButton(
              child: const Text('Next'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen_B()),
                );
              },
            ),
      ),
    );
  }
}

class Screen_B extends StatelessWidget {
  const Screen_B({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen B')),
      body: Center(
        child: ElevatedButton(
              child: const Text('Next'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen_C()),
                );
              },
            ),
      ),
    );
  }
}

class Screen_C extends StatelessWidget {
  const Screen_C({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen C')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Go back'),
        ),
      ),
    );
  }
}
