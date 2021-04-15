import 'package:flutter/material.dart';
import 'package:task_manage/lets_start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LetsStart(),
      debugShowCheckedModeBanner: false,
    );
  }
}
