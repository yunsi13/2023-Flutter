import 'package:flutter/material.dart';

class ContainerTest extends StatefulWidget {
  const ContainerTest({super.key});

  @override
  State<ContainerTest> createState() => _ContainerTestState();
}

class _ContainerTestState extends State<ContainerTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hi'),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.all(8.0),
                ),
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.all(8.0),
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.all(8.0),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.all(8.0),
                ),
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.all(8.0),
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.all(8.0),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.all(8.0),
                ),
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.all(8.0),
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.all(8.0),
                ),
              ],
            ),
          ],
        ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person,
            ),
            label: 'Profile'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification'
        ),

      ]),

    );
  }
}