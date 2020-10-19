import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyFirestorePage extends StatefulWidget {
  @override
  _MyFirestorePageState createState() => _MyFirestorePageState();
}
class _MyFirestorePageState extends State<MyFirestorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('コレクション＋ドキュメント作成'),
              onPressed: () async {
                // ドキュメント作成
                // await FirebaseFirestore.instance
                //     .collection('users') // コレクションID
                //     .doc('id_abc') // ドキュメントID
                //     .set({'name': '鈴木', 'age': 40}); // データ
              },
            ),
          ],
        ),
      ),
    );
  }
}