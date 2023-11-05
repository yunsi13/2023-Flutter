import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  @override
  Widget build(BuildContext context) {
    var isChecked = false;
    return Scaffold(
      appBar: AppBar(
        title: Text('button'),
        backgroundColor: Colors.deepPurple,
      ),
      body: CheckBox(
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = value;
          });
        },
      ),
      Switch(
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChedcked = value;
          });
        },
      ),
    );
  }
}
