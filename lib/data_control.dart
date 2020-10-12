import 'package:flutter/material.dart';
import 'package:flutter_kboy/data_control_model.dart';
import 'package:provider/provider.dart';

class DataContorol extends StatelessWidget {
  final String yuki_text = "yuki";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<DataControlModel>(
        create: (_) => DataControlModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('コリアンダー'),
          ),
          body: Consumer<DataControlModel>(builder: (context, model, child) {
            return Center(
              child: Column(
                children: [
                  Text(
                    model.yuki_text,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  RaisedButton(
                    child: Text('ボタン'),
                    onPressed: () {
                      // ここでなにか
                      model.ChangeText();
                    },
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}