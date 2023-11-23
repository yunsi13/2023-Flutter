import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  String inputMessage = '';
  final myController = TextEditingController(); //Textfield 인스턴스의 값을 얻거나 변경된 값을 모니터링할 수 있음

  initSate(){
    super.initState();
    myController.addListener(_printLatestValue);
  }
  _printLatestValue() {
    setState(() {
      inputMessage = myController.text;
    });
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose(); //dispose
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Input practice'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('$inputMessage'),
            SizedBox(height: 20,),
            TextField(
              onChanged: (text){
                setState(() {
                  inputMessage = text;
                });
              },
            ),
            SizedBox(height: 20,),
            TextField(
              controller: myController,
            ),
          ],
        ),
      ),
    );
  }
}





