import 'package:flutter/material.dart';
import 'package:flutterapp/PageViews.dart';
import 'ContainerTest.dart';
import 'RadioListTest.dart';
import 'FirstPage.dart';
import 'SecondPage.dart';
import 'MyHomePage.dart';
import 'MyCustomForm.dart';
import 'MyCustomForm2.dart';
import 'BmiMain.dart';
import 'BmiResult.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:  BmiResult(height: 1.0, weight: 2.0),
      );
  }
}


