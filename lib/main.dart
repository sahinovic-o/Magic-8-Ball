import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
        ),
        body: MagicBall(),
      ),
    );
  }
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  // answersChange = Random().nextInt(5) + 1;

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int answersChange = 5;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset('images/ball$answersChange.png'),
          ),
          onPressed: () {
            setState(() {
              answersChange = Random().nextInt(5) + 1;
            });
          },
        ),
      ],
    );
  }
}
