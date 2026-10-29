import 'package:flutter/material.dart';

import '../data/fruit_data.dart';
import '../widgets/fruit_card.dart';
import '../widgets/section_header.dart';

// Main screen: Scaffold with an AppBar and a scrollable list of fruits.
class FruitListScreen extends StatelessWidget {
  const FruitListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fruit List App'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      // Column: header on top, list fills the remaining space.
      body: Column(
        children: [
          SectionHeader(count: fruits.length),
          Expanded(
            // ListView.builder: builds fruit cards lazily as they scroll in.
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 16),
              itemCount: fruits.length,
              itemBuilder: (context, index) {
                final fruit = fruits[index];
                return FruitCard(
                  fruit: fruit,
                  onTap: () {
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        SnackBar(content: Text('You tapped ${fruit.name}')),
                      );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
