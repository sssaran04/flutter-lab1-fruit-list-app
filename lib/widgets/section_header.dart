import 'package:flutter/material.dart';

// Reusable header that shows the total number of fruits.
class SectionHeader extends StatelessWidget {
  final int count;

  const SectionHeader({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    // Container: margin, padding and rounded coloured background.
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 12, 12, 6),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: scheme.secondaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      // Row: icon and title on the left, count badge on the right.
      child: Row(
        children: [
          Icon(Icons.shopping_basket, color: scheme.onSecondaryContainer),
          const SizedBox(width: 8),
          Text(
            'Fresh Fruits',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: scheme.onSecondaryContainer,
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: scheme.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              '$count items',
              style: TextStyle(color: scheme.onPrimary),
            ),
          ),
        ],
      ),
    );
  }
}
