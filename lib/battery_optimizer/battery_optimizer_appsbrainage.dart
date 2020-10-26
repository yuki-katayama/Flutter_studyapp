import 'package:flutter/material.dart';

class AppsDrainage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: ClipOval(
            child: Container(
              color: Colors.pinkAccent,
              child: Icon(
                Icons.apps,
                color: Colors.white
              ),
              ),
            ),
            title: Text(
              'Apps Drainage',
              style: TextStyle(color: Colors.black),
            ),
          subtitle: Text(
            'Show the most draining energy application',
            style: TextStyle(color: Colors.black38),
          ),
        ),
        Material(
          color: Colors.white,
          // elevation: Colors.lightGreenAccent,
          borderRadius: BorderRadius.circular(16),
        )
      ],
    );
  }
  
}