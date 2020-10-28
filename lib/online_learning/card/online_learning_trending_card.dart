import 'package:flutter/material.dart';

class TrendingCourses extends StatefulWidget {
  @override
  _TrendingCoursesState createState() => _TrendingCoursesState();
}

class _TrendingCoursesState extends State<TrendingCourses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 32, bottom: 8, left: 8),
            alignment: Alignment.centerLeft,
            child: Text(
              'Trending Courses',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    color: Colors.grey[100],
                    child: ListTile(
                      leading: Icon(Icons.school, color: Colors.blue),
                      trailing: Text('Communication Skills'),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    color: Colors.grey[100],
                    child: ListTile(
                      leading: Icon(Icons.school, color: Colors.blue),
                      trailing: Text('Digital Marketing 101'),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    color: Colors.grey[100],
                    child: ListTile(
                      leading: Icon(Icons.school, color: Colors.blue),
                      trailing: Text('UX Research'),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    child: FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: Colors.blue,
                      textColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Text('View trending list'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}