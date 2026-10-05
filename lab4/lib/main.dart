import 'package:flutter/material.dart';

// Each task stays in its own file; this page composes them into one scroll.
import 'task_1_settings.dart';
import 'task_2_form.dart';
import 'task_3_counter.dart';
import 'task_4_feedback.dart';
import 'task_5_dialogs.dart';
import 'task_6_pickers.dart';
import 'task_7_list.dart';
import 'task_8_gallery.dart';
import 'task_9_navigation.dart';
import 'task_10_structure.dart';

void main() {
  runApp(const LabApp());
}

class LabApp extends StatefulWidget {
  const LabApp({super.key});

  @override
  State<LabApp> createState() => _LabAppState();
}

class _LabAppState extends State<LabApp> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Lab 4',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Lab 4 — All Tasks')),
        body: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            TaskSection(
              number: 1,
              title: 'Selection Controls',
              child: Task1Settings(
                darkMode: darkMode,
                onDarkModeChanged: (value) => setState(() => darkMode = value),
              ),
            ),
            const TaskSection(
              number: 2,
              title: 'Input Fields',
              child: Task2Form(),
            ),
            const TaskSection(
              number: 3,
              title: 'Buttons and Counter',
              child: Task3Counter(),
            ),
            const TaskSection(
              number: 4,
              title: 'Progress and Feedback',
              child: Task4Feedback(),
            ),
            const TaskSection(
              number: 5,
              title: 'Dialogs and Modals',
              child: Task5Dialogs(),
            ),
            const TaskSection(
              number: 6,
              title: 'Slider and Date Picker',
              child: Task6Pickers(),
            ),
            const TaskSection(
              number: 7,
              title: 'Scrollable Collection',
              child: Task7List(),
            ),
            const TaskSection(
              number: 8,
              title: 'Grid Gallery',
              child: Task8Gallery(),
            ),
            const TaskSection(
              number: 9,
              title: 'Navigation Controls',
              child: Task9Navigation(),
            ),
            const TaskSection(
              number: 10,
              title: 'Cards and FAQ',
              child: Task10Structure(),
            ),
          ],
        ),
      ),
    );
  }
}

class TaskSection extends StatelessWidget {
  const TaskSection({
    super.key,
    required this.number,
    required this.title,
    required this.child,
  });

  final int number;
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Task $number — $title',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            child,
          ],
        ),
      ),
    );
  }
}
