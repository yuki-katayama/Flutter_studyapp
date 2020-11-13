import 'package:flutter/material.dart';
import 'package:flutter_kboy/use_provider/data_control_model.dart';
import 'package:provider/provider.dart';

class DataContorol extends StatelessWidget {
  // final String yuki_text = "yuki";
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DataControlModel>(
        create: (_) => DataControlModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Data_control'),
          ),
          body: Consumer<DataControlModel>(builder: (context, model, child) {
            return Center(
              child: Column(
                children: [
                  Text(
                    model.yukiText,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  RaisedButton(
                    child: Text('ボタン'),
                    onPressed: () {
                      // ここでなにか
                      model.changeText();
                    },
                  ),
                ],
              ),
            );
          }),
        ),
      );
  }
}