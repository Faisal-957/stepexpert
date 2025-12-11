import 'package:flutter/material.dart';
import 'package:stepexpert/ui/views/screens/home_screen.dart';
import 'package:stepexpert/ui/views/screens/root_screen/root_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: RootScreen());
  }
}
