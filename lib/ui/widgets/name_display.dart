import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_2/provider/user_name_provider.dart';

class NameDisplay extends StatelessWidget {
  const NameDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    // Using Consumer to listen to changes
    return Consumer<UserNameProvider>(
      builder: (context, provider, child) {
        return Text(
          'Current Name: ${provider.userName}',
          style: Theme.of(context).textTheme.headlineMedium,
        );
      },
    );
  }
}