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
import 'StopWatchPage.dart';
import 'ToDoListPage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized()
  await Firebase.initializeApp(options: DefaultFirebaseOptions) //덜 씀 뭐 써야 하는 지 모름 ㅜㅜ
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:  ToDoListPage(),
      );
  }
}


