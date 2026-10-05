import 'package:flutter/material.dart';

class Task8Gallery extends StatelessWidget {
  const Task8Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(12),
      crossAxisCount: 2,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      children: List.generate(6, (index) {
        final imageUrl = 'https://picsum.photos/id/${20 + index}/500/500';
        return InkWell(
          onTap: () => showDialog<void>(
            context: context,
            builder: (_) => Dialog(
              child: InteractiveViewer(child: Image.network(imageUrl)),
            ),
          ),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            errorBuilder: (_, error, stackTrace) => const ColoredBox(
              color: Colors.blueGrey,
              child: Icon(Icons.image, size: 48),
            ),
          ),
        );
      }),
    );
  }
}
