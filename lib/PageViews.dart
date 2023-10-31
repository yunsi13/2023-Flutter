import 'package:flutter/material.dart';

class PageViews extends StatefulWidget {
  const PageViews({super.key});

  @override
  State<PageViews> createState() => _PageViewsState();
}

class _PageViewsState extends State<PageViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
        backgroundColor: Colors.deepPurple,
      ),
     body: Image.asset('assets/flutterimage.jpg'),
    );
  }
}

