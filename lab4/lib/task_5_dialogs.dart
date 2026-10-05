import 'package:flutter/material.dart';

class Task5Dialogs extends StatefulWidget {
  const Task5Dialogs({super.key});

  @override
  State<Task5Dialogs> createState() => _Task5DialogsState();
}

class _Task5DialogsState extends State<Task5Dialogs> {
  bool itemDeleted = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (!itemDeleted)
          Card(
            child: ListTile(
              leading: const Icon(Icons.shopping_bag),
              title: const Text('Sample item'),
              subtitle: const Text('This item can be deleted below.'),
            ),
          )
        else
          const ListTile(
            leading: Icon(Icons.inbox_outlined),
            title: Text('No items remaining'),
            subtitle: Text('The sample item was deleted.'),
          ),
        FilledButton.tonal(
          onPressed: () async {
            final confirmed = await showDialog<bool>(
              context: context,
              builder: (dialogContext) => AlertDialog(
                title: const Text('Delete item?'),
                content: const Text('This action can be undone.'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(dialogContext, false),
                    child: const Text('Cancel'),
                  ),
                  FilledButton(
                    onPressed: () => Navigator.pop(dialogContext, true),
                    child: const Text('Delete'),
                  ),
                ],
              ),
            );
            if (confirmed == true) setState(() => itemDeleted = true);
          },
          child: Text(itemDeleted ? 'Item deleted' : 'Delete item'),
        ),
        OutlinedButton(
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (sheetContext) => SafeArea(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: const Icon(Icons.message),
                      title: const Text('Share by message'),
                      onTap: () => Navigator.pop(sheetContext),
                    ),
                    ListTile(
                      leading: const Icon(Icons.link),
                      title: const Text('Copy link'),
                      onTap: () => Navigator.pop(sheetContext),
                    ),
                  ],
                ),
              ),
            );
          },
          child: const Text('Open share sheet'),
        ),
      ],
    );
  }
}
