// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:nav_lab/task_1_3.dart';

void main() {
  testWidgets('sign in opens Home', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Login()));

    await tester.tap(find.text('Sign in'));
    await tester.pumpAndSettle();

    expect(find.text('Home'), findsOneWidget);
  });
}
