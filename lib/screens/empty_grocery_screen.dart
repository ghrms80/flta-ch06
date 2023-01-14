import 'package:flutter/material.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 1
    return Padding(
      padding: const EdgeInsets.all(30.0),
      // 2
      child: Center(
        // 3
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            // TODO: Add empty image
            // TODO: Add empty screen title
            // TODO: Add empty screen subtitle
            // TODO: Add browse recipes button
          ],
        ),
      ),
    );
  }
}
