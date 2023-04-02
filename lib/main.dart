import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_app/View/Button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buttonsSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        CustomButton(icon: Icons.call, label: 'CALL', color: Colors.blue),
        CustomButton(icon: Icons.near_me, label: 'ROUTE', color: Colors.blue),
        CustomButton(icon: Icons.share, label: 'SHARE', color: Colors.blue)
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(20),
      child: const Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    Widget titleSection = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 5),
                child: const Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.grey),
              )
            ],
          )),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41')
        ],
      ),
    );

    Widget imageSection = Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Image.asset(
        'sources/assets/picture.jpg',
        width: 600,
        height: 240,
        fit: BoxFit.cover,
      ),
    );

    return MaterialApp(
      title: 'Flutter Layout Demo',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Layout Demo'),
          ),
          body: Column(
            children: [imageSection, titleSection, buttonsSection, textSection],
          )),
    );
  }
}
