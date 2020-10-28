import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _Animation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(seconds: 2),
        width: 50,
        height: 100,
    );
  }
}

class AnimationPractice extends StatefulWidget {
  @override
  _AnimationPractice createState() => _AnimationPractice();
}

class _AnimationPractice extends State<AnimationPractice>{

  double size = 100;
  double width = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  size = (size == 200 ? 100 : 200);
                  width = (width == 50 ? 100 : 50);
                });
              },
              child: Icon(Icons.play_arrow),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              width: size,
              height: size,
              color: Colors.lightGreenAccent,
            ),
            SizedBox(height: 12),
            AnimatedContainer(
              duration: Duration(seconds: 1),
              width: width,
              height: 200,
              color: Colors.lightGreenAccent,
            ),
          ],
        ),
      ),
    );
  }
}