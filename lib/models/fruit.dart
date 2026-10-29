import 'package:flutter/material.dart';

// Model class that holds the data for a single fruit.
class Fruit {
  final String name;
  final String emoji;
  final Color color;
  final double price;
  final String description;

  const Fruit({
    required this.name,
    required this.emoji,
    required this.color,
    required this.price,
    required this.description,
  });
}
