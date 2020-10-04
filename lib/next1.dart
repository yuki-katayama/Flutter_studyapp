import 'package:flutter/material.dart';
import 'package:flutter_kboy/next4.dart';

class next1 extends StatelessWidget {
  next1(this.name);
  final String name;

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
        color: Colors.amberAccent,
        child: Column(
          children: [
            Text(name),
            Center(
              child: RaisedButton(
                child: Text("次へ"),
                color: Colors.limeAccent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => next4()),
                  );
                },
                //ボタンの編集
                splashColor: Colors.black54,
                shape: StadiumBorder(), //角丸
              ),
            ),
            RaisedButton(
              child: Text("戻る"),
              color: Colors.limeAccent,
              onPressed: (){
                final result = Navigator.pop(context, "kyukiーーー");
                //推したら反応するコードを書く
              },
              splashColor: Colors.black54,
              shape: StadiumBorder(), //角丸
            ),
          ],
        ),

      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}