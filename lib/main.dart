import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kboy/next1.dart';
import 'package:flutter_kboy/youtube.dart';
import 'package:firebase_core/firebase_core.dart';

bool USE_FIRESTORE_EMULATOR = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  if (USE_FIRESTORE_EMULATOR) {
    FirebaseFirestore.instance.settings = Settings(
        host: 'localhost:8080', sslEnabled: false, persistenceEnabled: false);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String tex  = "勉強したもの";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Set Alarm"),
        actions: [
          Icon(Icons.add),
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: RaisedButton(
              child: Text(tex),
              color: Colors.limeAccent,
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Next1("kyuki")),
                );
                tex = result;
                print(result);
              },
              splashColor: Colors.black54,
              shape: StadiumBorder(), //角丸
            ),
          ),
          RaisedButton(
            child: Text("Youtube"),
            color: Colors.limeAccent,
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Youtube()),
              );
            },
            splashColor: Colors.black54,
            shape: StadiumBorder(), //角丸
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
