import 'package:flutter/material.dart';

class MyCustomForm2 extends StatefulWidget {
  const MyCustomForm2({super.key});

  @override
  State<MyCustomForm2> createState() => _MyCustomForm2State();
}

class _MyCustomForm2State extends State<MyCustomForm2> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: (value){
              if(value!.isEmpty){
                return '글자를 입력하세요';
              }
              else
                return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text('검증 완료')
                        )
                    );
                  }
                },
                child: Text('검증'),
            ),
          )
        ],
      ),
    );
  }
}
