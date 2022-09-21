import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:technical/pages/profile.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Profile(),
    );
  }
}
