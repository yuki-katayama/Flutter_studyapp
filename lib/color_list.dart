import 'package:flutter/material.dart';

class ColorList extends StatelessWidget {
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
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://pbs.twimg.com/profile_images/1268084646165704704/7Gks-K_G_400x400.jpg'
                  )
                ),
              ],
            ),
            test(Colors.blue),
            test(Colors.green),
            test(Colors.yellow),
            test(Colors.orange),

            RaisedButton(
              child: Text("戻る"),
              color: Colors.limeAccent,
              splashColor: Colors.black54,
              shape: StadiumBorder(), //角丸
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );

  }
  Container test(colorSelect){
    return Container(
      width: 50.0,
      height:50.0,
      color: colorSelect,
    );
  }
}