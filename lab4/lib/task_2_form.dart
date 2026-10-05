import 'package:flutter/material.dart';

class Task2Form extends StatefulWidget {
  const Task2Form({super.key});

  @override
  State<Task2Form> createState() => _Task2FormState();
}

class _Task2FormState extends State<Task2Form> {
  final formKey = GlobalKey<FormState>();
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        children: [
          const Text(
            'Input Fields',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Enter your email';
                    }
                    if (!value.contains('@')) return 'Email must contain @';
                    return null;
                  },
                ),
                TextFormField(
                  obscureText: hidePassword,
                  autocorrect: false,
                  enableSuggestions: false,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        hidePassword ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() => hidePassword = !hidePassword);
                      },
                    ),
                  ),
                  validator: (value) => value == null || value.isEmpty
                      ? 'Enter your password'
                      : null,
                ),
                const SizedBox(height: 12),
                FilledButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Form is valid')),
                      );
                    }
                  },
                  child: const Text('Validate Login'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
