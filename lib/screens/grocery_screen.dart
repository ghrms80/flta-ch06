import 'package:ch06_interactive_widgets/screens/empty_grocery_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ch06_interactive_widgets/models/models.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Add a scaffold widget
    return const EmptyGroceryScreen();
  }

  Widget buildGroceryScreen() {
    // 1
    return Consumer<GroceryManager>(
      // 2
      builder: (context, manager, child) {
        // 3
        if (manager.groceryItems.isNotEmpty) {
          // TODO: Add GroceryListScreen
          return Container();
        } else {
          // 4
          return const EmptyGroceryScreen();
        }
      },
    );
  }
}
