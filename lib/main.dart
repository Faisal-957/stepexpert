import 'package:flutter/material.dart';
import 'package:stepexpert/ui/views/screens/profile_screen/profile.dart';
import 'package:stepexpert/ui/views/screens/profile_screen/profile_subscreens/privacy_polic.dart';
import 'package:stepexpert/ui/views/screens/profile_screen/profile_subscreens/termcondition.dart';
import 'package:stepexpert/ui/views/screens/splash_screen.dart';
import 'package:stepexpert/ui/views/screens/tabbar_screens/tabbarscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Tabbarscreen());
  }
}
