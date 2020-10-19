import 'package:flutter/material.dart';
import 'package:flutter_kboy/video_detail_page.dart';

class Youtube extends StatelessWidget {

  final items = List<String>.generate(10000, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.videocam),
        title: Text("Yuki_youtube"),
          actions: <Widget>[
            SizedBox(
              width: 44,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            ),
            SizedBox(
              width: 44,
              child: FlatButton(
                  child: Icon(Icons.search),
                onPressed: (){
                    //何かを書く
                },
              ),
            ),
            SizedBox(
              width: 50,
                child: FlatButton(
                    child: Icon(Icons.more_vert),
                  onPressed: (){
                    //何かを書く
                  },
                )
            )
          ]
      ),

      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 90,
                    height: 90,
                    child: Image.network(
                      'https://lh3.googleusercontent.com/a-/AOh14Gi54vdXubKakuI-KNZIaDQaPOsZva0vzDxFb0Y12A=s600-k-no-rp-mo',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                    height: 10,
                  ),
                  Column(
                    children: [
                      const Text(
                        'kyuki-42tokyo'
                      ),
                      FlatButton(
                        child: Row(
                          children: [
                            Icon(Icons.video_call,
                            color: Colors.red
                            ),
                            Text("チャンネル登録"),
                          ],
                        ),
                        onPressed: (){
                          //何かを書く
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VideoDetailPage()),
                        );
                    },
                    contentPadding: EdgeInsets.all(5),
                    leading:Image.network(
                      'https://lh3.googleusercontent.com/a-/AOh14Gi54vdXubKakuI-KNZIaDQaPOsZva0vzDxFb0Y12A=s600-k-no-rp-mo',
                    ),
                    title: Column(
                      children: [
                        Text('スノーボード入門 グラトリ中級者',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                        Row(
                          children: [
                            Text('267万回再生',
                            style: TextStyle(
                              fontSize: 12,
                            )),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('二日前',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.more_vert),
                  );
                  },
              ),
            ),
          ],
        )
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}