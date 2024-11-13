import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  final random = Random();
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Ask Me Anything',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: TextButton(
            onPressed: () {
              setState(() {
                num = random.nextInt(5) + 1;
              });
            },
            child: Image(
              image: AssetImage('images/ball$num.png'),
            ),
          ),
        ),
      ),
    );
  }
}
