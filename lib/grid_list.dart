import 'package:flutter/material.dart';

class grid_list extends StatelessWidget {
  // NextNextPage(this.name);
  // final String name;
  final items = List<String>.generate(10000, (i) => "Item $i");
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
        child: GridView.count(
          //横の長さ
          crossAxisCount: 3,
          children: List.generate(100, (index) {
            return Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://pbs.twimg.com/profile_images/1268084646165704704/7Gks-K_G_400x400.jpg'
                  ),
                ),
                Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
            );
          }),
        ),

      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}