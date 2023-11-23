import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final imageItems = [
  'assets/gominsi.jpg',
  'assets/gominsi2.jpg',
  'assets/eunwoo.jpg',
];

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  //menu
  Widget _buildTop() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: (){
                print('클릭');
              },
              child: Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('택시'),
                ],
              ),
            ),
            Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('블랙'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('바이크'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('대리'),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('택시'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('블랙'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('바이크'),
              ],
            ),
            Opacity(
              opacity: 0.0,
              child: Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('대리'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
  Widget _buildMiddle() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true,
        ),
    items: imageItems.map((path)
    {
      return Builder(
        builder: (BuildContext context) {
        return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: ClipRect(
              child: Image.asset(
                path,
                fit: BoxFit.cover,
              ),
            ),
          );
      },
      );
    }).toList(),
    );
  }
  Widget _buildBottom() {
    final items = List.generate(10, (i){
        return ListTile(
          leading: Icon(Icons.notifications_none),
          title: Text('공지사항입니다.'),
        );
    });
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }
}
