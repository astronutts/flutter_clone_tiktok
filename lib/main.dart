import 'package:flutter/material.dart';
import 'package:flutter_clone_tiktok/features/authentication/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFFE9435A),
      ),
      debugShowCheckedModeBanner: false,
      home: const SignUpScreen(),
    );
  }
}
