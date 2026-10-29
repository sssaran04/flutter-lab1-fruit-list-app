import 'package:flutter/material.dart';

import '../models/fruit.dart';

// Reusable column showing a fruit's name, description and price.
class FruitInfo extends StatelessWidget {
  final Fruit fruit;

  const FruitInfo({super.key, required this.fruit});

  @override
  Widget build(BuildContext context) {
    // Column: stacks the three text items vertically.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fruit.name,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          fruit.description,
          style: TextStyle(fontSize: 13, color: Colors.grey.shade700),
        ),
        const SizedBox(height: 6),
        // Container: small rounded price tag.
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: fruit.color,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            '₹${fruit.price.toStringAsFixed(0)} / kg',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
