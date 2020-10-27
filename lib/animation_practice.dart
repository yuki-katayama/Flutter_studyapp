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
  AnimationController controller;
  Animation animation;

  double size = 100;
  double width = 50;

  // void initState(){
  //   super.initState();
  //   controller = AnimationController(
  //     vsync: this,
  //     duration: Duration(seconds: 2),
  //   );
  //   animation = Tween(
  //     begin: 1.0,
  //     end: 2.0,
  //   ).animate(controller);
  // }
  //
  // void dispose(){
  //   super.dispose();
  // }

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
          // FloatingActionButton(
          //   child: Icon(Icons.stop),
          //   onPressed: (){
          //   controller.stop();
          //     },
          // ),
          // FloatingActionButton(
          //     child: Icon(Icons.loop),
          //     onPressed: (){
          //       controller.repeat();
          //     })
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