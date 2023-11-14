import 'package:flutter/material.dart';
import 'Person.dart';
import 'SecondPage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String resultStr = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: [
          Text(resultStr),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            child: Text('다음 페이지로'),
            onPressed: () async {
              final person = new Person('홍길동', 30);
              final result = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage(person: person)),
              );
              setState(() {
                resultStr = result;
              });
            },
          ),
        ],
      ),
    );
  }
}
