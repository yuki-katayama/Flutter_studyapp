import 'package:flutter/material.dart';
import 'battery_level_indicator.dart';
import 'battery_optimizer_appsbrainage.dart';
import 'battery_optimizer_button.dart';

class BatteryOptimizerHome extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Battery Optimizer'),
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BatteryOptimizerButton(),
            BatteryLevelIndicator(),
            AppsDrainage(),
            OptimizeNow(),
          ],
        ),
      )
    );
  }

}