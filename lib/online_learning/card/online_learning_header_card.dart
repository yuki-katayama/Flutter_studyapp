import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({
    Key key,
    @required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 24),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class HeroCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: Colors.blue[50],
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 150,
              child: Text('Choose from over 100,000 online video courses'),
            ),
            SizedBox(height: 16),
            FlatButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: Colors.blue,
              textColor: Colors.white,
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 32,
              ),
              child: Text('Browse all courses'),
            ),
          ],
        ),
      ),
    );
  }
}