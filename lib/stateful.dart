import 'package:flutter/material.dart';

class Stateful extends StatefulWidget
{
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("stateful"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(count.toString()),
            RaisedButton(
              onPressed: (){
                setState(() {
                  count = count + 1;
                });
              },
              child: Text('カウントアップ'),
            )
          ],
        ),
      ),
    );
  }
}