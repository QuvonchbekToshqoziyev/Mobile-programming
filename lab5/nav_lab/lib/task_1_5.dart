import 'package:flutter/material.dart';

class SingleButtonPage extends StatelessWidget {
  const SingleButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: BackOrExitButton()));
  }
}

class BackOrExitButton extends StatelessWidget {
  const BackOrExitButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bool canPop = Navigator.of(context).canPop();

    return ElevatedButton(
      onPressed: canPop ? () => Navigator.of(context).pop() : null,
      child: Text(canPop ? 'Back' : 'Nothing to go back to'),
    );
  }
}
