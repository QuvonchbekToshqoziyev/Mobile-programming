import 'package:flutter/material.dart';

import 'task_1_2.dart';
import 'task_1_3.dart';
import 'task_1_4.dart';
import 'task_1_5.dart';

void main() => runApp(const MaterialApp(home: Login())); // App starts here

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Open details'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Open task 1.2'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScreenA()),
                );
              },
            ),
            const SizedBox(height: 16),

            ElevatedButton(
              child: const Text('Check Status'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('You are logged in'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
              ),
              child: const Text(
                'Log out (Task 1.3)',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Open task 1.4'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    settings: const RouteSettings(name: One.routeName),
                    builder: (context) => const One(),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Open task 1.5'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SingleButtonPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            const BackOrExitButton(),
          ],
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Go back'),
        ),
      ),
    );
  }
}
