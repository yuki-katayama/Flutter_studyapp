import 'package:flutter/material.dart';
import 'package:flutter_kboy/info.dart';
import 'package:flutter_kboy/color_list.dart';
import 'package:flutter_kboy/long_list.dart';
import 'package:flutter_kboy/signup.dart';
import 'package:flutter_kboy/text.dart';
import 'package:flutter_kboy/grid_list.dart';

class next4 extends StatelessWidget {

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
            ListTile(
              leading: Icon(Icons.info),
              title: Text('お問い合わせはこちら'),
              trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => info()),
                  );
                }
            ),
            ListTile(
              leading: Icon(Icons.more_horiz),
              title: Text('color && horizantal list'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => color_list()),
                  );
                }
            ),
            ListTile(
              leading: Icon(Icons.format_line_spacing),
              title: Text('very long list'),
              trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => long_list()),
                  );
                }
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('signup page'),
              trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signup()),
                  );
                }
            ),
            ListTile(
              leading: Icon(Icons.text_format),
              title: Text('Text_setting'),
              trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => text()),
                  );
                }
            ),
            ListTile(
              leading: Icon(Icons.grid_on),
              title: Text('grid_list'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => grid_list()),
                  );
                }
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              trailing: Icon(Icons.map),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
              trailing: Icon(Icons.photo_album),
            ),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone'),
            ),
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