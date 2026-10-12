import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen A'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Next'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ScreenB()),
            );
          },
        ),
      ),
    );
  }
}

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen B'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Next'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ScreenC()),
            );
          },
        ),
      ),
    );
  }
}

class ScreenC extends StatelessWidget {
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen C'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Back'),
        ),
      ),
    );
  }
}
