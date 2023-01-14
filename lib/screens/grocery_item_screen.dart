import 'package:ch06_interactive_widgets/models/models.dart';
import 'package:flutter/material.dart';

class GroceryItemScreen extends StatefulWidget {
  // 1
  final Function(GroceryItem) onCreate;
  // 2
  final Function(GroceryItem) onUpdate;
  // 3
  final GroceryItem? originalItem;
  // 4
  final bool isUpdateing;

  const GroceryItemScreen({
    super.key,
    required this.onCreate,
    required this.onUpdate,
    this.originalItem,
  }) : isUpdateing = (originalItem != null);

  @override
  GroceryItemScreenState createState() => GroceryItemScreenState();
}

class GroceryItemScreenState extends State<GroceryItemScreen> {
  // TODO: Add grocery item screen state properties
  final _nameController = TextEditingController();
  String _name = '';
  Importance _importance = Importance.low;
  DateTime _dueDate = DateTime.now();
  TimeOfDay _timeOfDay = TimeOfDay.now();
  Color _currentColor = Colors.green;
  int _currentSliderValue = 0;

  // TODO: Add initState()
  @override
  void initState() {
    super.initState();
    // 1
    final originalItem = widget.originalItem;
    if (originalItem != null) {
      _nameController.text = originalItem.name;
      _name = originalItem.name;
      _currentSliderValue = originalItem.quantity;
      _importance = originalItem.importance;
      _currentColor = originalItem.color;
      final date = originalItem.date;
      _timeOfDay = TimeOfDay(
        hour: date.hour,
        minute: date.minute,
      );
      _dueDate = date;
    }

    // 2
    _nameController.addListener(
      () {
        setState(() {
          _name = _nameController.text;
        });
      },
    );
  }

  // TODO: Add dispose()
  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Add GroceryItemScreen Scaffold
    return Container(color: Colors.orange);
  }
  // TODO: Add buildNameField()

  // TODO: Add buildImportanceField()

  // TODO: Add buildDateField()

  // TODO: Add buildTimeField()

  // TODO: Add buildColorPicker()

  // TODO: Add buildQuantityField()
}
