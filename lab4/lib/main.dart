import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const MyHomePage(title: 'Settings'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _darkMode = false;
  bool _terms = false;
  final _formKey = GlobalKey<FormState>();
  bool _hidePassword = true;

  @override
  Widget build(BuildContext context) {
final pageTheme = _darkMode ? ThemeData.dark() : ThemeData.light();
return Theme(
    data: pageTheme,
    child: Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
             SwitchListTile(title: const Text("Dark Mode"), value: _darkMode,
              onChanged: (value) {
                setState(() {
                  _darkMode = value;
                });
              },),
            CheckboxListTile(
  title: const Text('Agree to Terms'),
  value: _terms,
  onChanged: (value) {
    setState(() {
      _terms = value ?? false;
    });
  },
),

ElevatedButton(
  onPressed: _terms
      ? () {
          // Continue action
        }
      : null,
  child: const Text('Continue'),
),
const Text(
  'Login Form',
  style: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  ),
),

Form(
  key: _formKey,
  child: Column(
    children: [
      TextFormField(
        obscureText: false,
        decoration: const InputDecoration(
          labelText: 'Email',
          prefixIcon: Icon(Icons.email),
        ),
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'Please enter your email';
          }

          if (!value.contains('@')) {
            return 'Email must contain @';
          }

          return null;
        },
      ),

      TextFormField(
        obscureText: _hidePassword,
        autocorrect: false,
        enableSuggestions: false,
        decoration: InputDecoration(
          labelText: 'Password',
          prefixIcon: const Icon(Icons.lock),
          suffixIcon: IconButton(
            icon: Icon(
              _hidePassword
                  ? Icons.visibility
                  : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                _hidePassword = !_hidePassword;
              });
            },
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your password';
          }

          return null;
        },
      ),

      const SizedBox(height: 16),

      ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Login form is valid'),
              ),
            );
          }
        },
        child: const Text('Login'),
      ),
    ],
  ),
),
          ],
      ),
    ));
  }
}
