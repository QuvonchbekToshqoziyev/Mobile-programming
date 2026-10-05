import 'package:flutter/material.dart';

class Task1Settings extends StatefulWidget {
  const Task1Settings({
    super.key,
    required this.darkMode,
    required this.onDarkModeChanged,
  });

  final bool darkMode;
  final ValueChanged<bool> onDarkModeChanged;

  @override
  State<Task1Settings> createState() => _Task1SettingsState();
}

class _Task1SettingsState extends State<Task1Settings> {
  bool agreedToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        children: [
          const Text(
            'Selection Controls',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SwitchListTile(
            title: const Text('Dark Mode'),
            value: widget.darkMode,
            onChanged: widget.onDarkModeChanged,
          ),
          CheckboxListTile(
            title: const Text('Agree to Terms'),
            value: agreedToTerms,
            onChanged: (value) {
              setState(() => agreedToTerms = value ?? false);
            },
          ),
          ElevatedButton(
            onPressed: agreedToTerms
                ? () => _message(context, 'Terms accepted')
                : null,
            child: const Text('Continue'),
          ),
        ],
      ),
    );
  }

  void _message(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}
