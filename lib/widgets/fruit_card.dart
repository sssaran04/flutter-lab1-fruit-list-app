import 'package:flutter/material.dart';

import '../models/fruit.dart';
import 'fruit_avatar.dart';
import 'fruit_info.dart';

// Reusable card that displays one fruit: Card > Container > Row.
class FruitCard extends StatelessWidget {
  final Fruit fruit;
  final VoidCallback? onTap;

  const FruitCard({super.key, required this.fruit, this.onTap});

  @override
  Widget build(BuildContext context) {
    // Card: elevation and rounded shape.
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        // Container: padding and a tinted, rounded BoxDecoration.
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: fruit.color.withValues(alpha: 0.08),
            borderRadius: BorderRadius.circular(16),
          ),
          // Row: avatar on the left, info in the middle, arrow on the right.
          child: Row(
            children: [
              FruitAvatar(emoji: fruit.emoji, color: fruit.color),
              const SizedBox(width: 16),
              Expanded(child: FruitInfo(fruit: fruit)),
              Icon(Icons.chevron_right, color: fruit.color),
            ],
          ),
        ),
      ),
    );
  }
}
