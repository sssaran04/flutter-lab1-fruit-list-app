import 'package:flutter/material.dart';

import '../models/fruit.dart';

// Static list of fruits shown in the ListView.
const List<Fruit> fruits = [
  Fruit(
    name: 'Apple',
    emoji: '🍎',
    color: Colors.red,
    price: 180,
    description: 'Crisp and sweet, rich in fibre.',
  ),
  Fruit(
    name: 'Banana',
    emoji: '🍌',
    color: Colors.amber,
    price: 60,
    description: 'Soft, energy-rich and full of potassium.',
  ),
  Fruit(
    name: 'Orange',
    emoji: '🍊',
    color: Colors.orange,
    price: 120,
    description: 'Juicy citrus fruit packed with vitamin C.',
  ),
  Fruit(
    name: 'Grapes',
    emoji: '🍇',
    color: Colors.purple,
    price: 90,
    description: 'Small, sweet berries that grow in bunches.',
  ),
  Fruit(
    name: 'Watermelon',
    emoji: '🍉',
    color: Colors.green,
    price: 40,
    description: 'Large, refreshing fruit with high water content.',
  ),
  Fruit(
    name: 'Strawberry',
    emoji: '🍓',
    color: Colors.pink,
    price: 250,
    description: 'Bright red berry with a sweet, tangy taste.',
  ),
  Fruit(
    name: 'Mango',
    emoji: '🥭',
    color: Colors.deepOrange,
    price: 150,
    description: 'The king of fruits, sweet and aromatic.',
  ),
  Fruit(
    name: 'Pineapple',
    emoji: '🍍',
    color: Colors.lime,
    price: 80,
    description: 'Tropical fruit with a tangy, sweet flavour.',
  ),
  Fruit(
    name: 'Cherry',
    emoji: '🍒',
    color: Colors.redAccent,
    price: 400,
    description: 'Small stone fruit, sweet and slightly sour.',
  ),
  Fruit(
    name: 'Kiwi',
    emoji: '🥝',
    color: Colors.lightGreen,
    price: 200,
    description: 'Fuzzy brown skin with bright green flesh.',
  ),
];
