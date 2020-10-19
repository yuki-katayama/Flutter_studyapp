import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  // NextNextPage(this.name);
  // final String name;
  final myFocusNode = FocusNode();
  final myController = TextEditingController();
  String name;

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
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                  hintText: 'name'
              ),
              onChanged: (text) {
                print("First text field: $text");
                name = text;
              },
            ),
            TextField(
              controller: myController,
              focusNode: myFocusNode,
              decoration: InputDecoration(
                hintText: '趣味',
              ),
            ),
            RaisedButton(
              child: Text("フォーカス"),
              onPressed: (){
                myFocusNode.requestFocus();
              },
            ),
            RaisedButton(
              child: Text("新規登録"),
              onPressed:(){
                print(myController.text);
                return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(myController.text),
                    );
                  },
                );
              }
            ),
            RaisedButton(
              child: Center(child: Text("戻る")),
              color: Colors.limeAccent,
              onPressed: (){
                Navigator.pop(context);
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