import 'package:flutter/material.dart';

class Task6Pickers extends StatefulWidget {
  const Task6Pickers({super.key});

  @override
  State<Task6Pickers> createState() => _Task6PickersState();
}

class _Task6PickersState extends State<Task6Pickers> {
  double volume = 50;
  DateTime? selectedDate;

  Future<void> chooseDate() async {
    final date = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );
    if (date != null) setState(() => selectedDate = date);
  }

  @override
  Widget build(BuildContext context) {
    final dateText = selectedDate == null
        ? 'No date selected'
        : '${selectedDate!.year}-${selectedDate!.month.toString().padLeft(2, '0')}-${selectedDate!.day.toString().padLeft(2, '0')}';

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Volume: ${volume.round()}%'),
          Slider(
            value: volume,
            min: 0,
            max: 100,
            divisions: 100,
            label: '${volume.round()}%',
            onChanged: (value) => setState(() => volume = value),
          ),
          OutlinedButton(
            onPressed: chooseDate,
            child: Text('Choose date: $dateText'),
          ),
        ],
      ),
    );
  }
}
