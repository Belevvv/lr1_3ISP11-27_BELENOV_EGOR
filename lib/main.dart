import 'package:flutter/material.dart';
import 'package:flutter_application_1/mm/cat_fact_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat Fact App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CatFactScreen(),
    );
  }
}