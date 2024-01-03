// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.air_rounded),
          title: Text("hello world!"),
        ),
      ),
    );
  }
}
