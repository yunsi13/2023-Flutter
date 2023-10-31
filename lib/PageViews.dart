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
        title: Text('Tap'),
      ),
     body: Center(
       child: Container(
         color: Colors.green,
         width: 100,
         height: 100,
       ),
     ),
    );
  }
}

