import 'package:flutter/material.dart';
import 'package:greengrocer/src/constants.dart';
import 'package:greengrocer/src/views/screens/auth/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Greengrocer',
      theme: ThemeData(
        primarySwatch: colorNeutral300,
      ),
      home: const SignInScreen(),
    );
  }
}
