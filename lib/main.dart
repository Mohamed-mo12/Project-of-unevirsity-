import 'package:flutter/material.dart';
import 'package:project/home0.dart';
import 'package:project/home1.dart';
import 'package:project/home2.dart';
import 'package:project/home3.dart';
import 'package:project/home4.dart';
import 'package:project/login.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home0(),
    );
  }
}
