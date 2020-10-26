import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _BatteryOptimizerButton extends StatelessWidget{
  final String text;

  const _BatteryOptimizerButton({
    Key key,
    @required this.text,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.white,
      elevation: 4,
      height: 24,
      padding: EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      onPressed: (){},
      child: Text(
        text,
        style: TextStyle(
            color: Colors.amberAccent,
            fontSize: 12
        ),
      )
    );
  }
}

class BatteryOptimizerButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 16),
            _BatteryOptimizerButton(text: 'Battery Optimizer'),
            SizedBox(width: 16),
            _BatteryOptimizerButton(text: 'Connection Optimizer'),
            SizedBox(width: 16),
            _BatteryOptimizerButton(text: 'Memory Optimizer'),
            SizedBox(width: 16),
            _BatteryOptimizerButton(text: 'Storage Optimizer'),
            SizedBox(width: 16),
          ],
        )
      )
    );
  }
}

class OptimizeNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: RaisedButton(
        color: Colors.deepPurple,
        padding: EdgeInsets.symmetric(horizontal: 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {},
        child: Text('Optimize Now', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}