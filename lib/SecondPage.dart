import 'package:flutter/material.dart';

import 'Person.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key?key, required this.person}): super(key: key);
  final Person person;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: [
          Text(widget.person.name),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            child: Text('이전 페이지로'),
            onPressed: (){
              Navigator.pop(context, 'ok');
            },
          ),
        ],
      ),
    );
  }
}
