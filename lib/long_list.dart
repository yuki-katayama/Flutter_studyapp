import 'package:flutter/material.dart';

class LongList extends StatelessWidget {
  // NextNextPage(this.name);
  // final String name;
  final items = List<String>.generate(100, (i) => "kyuki $i");
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
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
            );
          },
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}