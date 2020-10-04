import 'package:flutter/material.dart';

class text extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Set Alarm"),
        actions: [
          Icon(Icons.add),
          Icon(Icons.share),
          Icon(Icons.storage),
          Icon(Icons.cloud_upload),
        ],
      ),

      body: Container(
        height: double.infinity,
        color: Colors.tealAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Yuki",
            style: TextStyle(fontSize: 100,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.wavy,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 3
                ..color = Colors.blue[300],
            )
            ),
            DefaultTextStyle(
              style: TextStyle(fontSize: 40,
              color: Colors.black87),
              child: Column(
                children: [
                  Text("kattyan"),
                  Text("kattyan"),
                  Text("kattyan"),
                ],
              ),
            ),
            Text("aa"),
            RaisedButton(
              child: Center(child: Text("戻る")),
              color: Colors.limeAccent,
              splashColor: Colors.black54,
              shape: StadiumBorder(), //角丸
              onPressed: (){
                final result = Navigator.pop(context);
              },
            ),
          ],
        ),

      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}