import 'package:animations/animation.dart';
import 'package:animations/fade.dart';
import 'package:animations/rotate.dart';
import 'package:animations/scale.dart';
import 'package:animations/slidetrans.dart';
import 'package:animations/tween.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TweenAnimation(),
    );
  }
}