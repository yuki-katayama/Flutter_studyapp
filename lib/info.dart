import 'package:flutter/material.dart';

class info extends StatelessWidget {
  // NextNextPage(this.name);
  // final String name;

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
        child: ListView(
          children: <Widget>[
            RaisedButton(
              child: Text("戻る"),
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