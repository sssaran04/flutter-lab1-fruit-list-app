import 'package:flutter/material.dart';

// Reusable circular avatar that shows a fruit emoji.
class FruitAvatar extends StatelessWidget {
  final String emoji;
  final Color color;
  final double size;

  const FruitAvatar({
    super.key,
    required this.emoji,
    required this.color,
    this.size = 60,
  });

  @override
  Widget build(BuildContext context) {
    // Container: circular BoxDecoration with a coloured border.
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color.withValues(alpha: 0.2),
        border: Border.all(color: color, width: 2),
      ),
      child: Text(emoji, style: TextStyle(fontSize: size * 0.5)),
    );
  }
}
