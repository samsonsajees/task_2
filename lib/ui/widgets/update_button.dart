import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_2/provider/user_name_provider.dart';

class UpdateButton extends StatelessWidget {
  const UpdateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Updating the variable on button click
        // Using read() because we don't need to listen to changes here
        context.read<UserNameProvider>().updateName();
      },
      child: const Text('Change Name to Caddayn'),
    );
  }
}