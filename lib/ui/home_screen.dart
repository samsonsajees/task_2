import 'package:flutter/material.dart';
import 'package:task_2/ui/widgets/name_display.dart';
import 'package:task_2/ui/widgets/update_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider State Management'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            // Showing the variable in UI (extracted widget)
            NameDisplay(),
            
            SizedBox(height: 24),
            
            // Button to update variable (extracted widget)
            UpdateButton(),
          ],
        ),
      ),
    );
  }
}