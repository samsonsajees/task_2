import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_2/provider/user_name_provider.dart';
import 'package:task_2/ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Registering a provider using MultiProvider
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserNameProvider()),
      ],
      child: MaterialApp(
        title: 'Project 2',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}