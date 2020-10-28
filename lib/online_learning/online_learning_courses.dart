import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'card/online_learning_header_card.dart';

const figmaLogoUrl =
    'https://user-images.githubusercontent.com/7200238/83031886-1ce87880-a070-11ea-89c8-5cee840d5782.png';
const sketchLogoUrl =
    'https://user-images.githubusercontent.com/7200238/83145378-a7dc7800-a12f-11ea-93e1-32c7982c5e63.png';
const xdLogoUrl =
    'https://user-images.githubusercontent.com/7200238/83145578-f558e500-a12f-11ea-85fa-3e26a966d180.png';


class _CourseCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String logoUrl;
  const _CourseCard({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.logoUrl,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: ListTile(
          leading: Container(
            width: 48,
            height: 48,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.network(
              logoUrl,
              fit: BoxFit.contain,
            ),
          ),
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: Icon(Icons.more_horiz),
        ),
      ),
    );
  }
}

class _Recommended extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 32, bottom: 8, left: 8),
          alignment: Alignment.centerLeft,
          child: Text(
            'Recommended',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        _CourseCard(
          title: 'Figma',
          subtitle: 'Figma Mastery',
          logoUrl: figmaLogoUrl,
        ),
        _CourseCard(
          title: 'Sketch',
          subtitle: 'Symbol Libraries',
          logoUrl: sketchLogoUrl,
        ),
        _CourseCard(
          title: 'Adobe XD',
          subtitle: 'Fundamentals of XD',
          logoUrl: xdLogoUrl,
        ),
        _CourseCard(
          title: 'Figma',
          subtitle: 'Figma Mastery',
          logoUrl: figmaLogoUrl,
        ),
        _CourseCard(
          title: 'Sketch',
          subtitle: 'Symbol Libraries',
          logoUrl: sketchLogoUrl,
        ),
        _CourseCard(
          title: 'Adobe XD',
          subtitle: 'Fundamentals of XD',
          logoUrl: xdLogoUrl,
        ),
      ],
    );
  }
}

class CoursesPage extends StatefulWidget {
  @override
  _CoursesPageState createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> with SingleTickerProviderStateMixin{
  AnimationController _controller;
  Animation _animationHorizontal;
  Animation _animationVertical;

  @override
  void initState(){
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animationHorizontal = Tween(
      begin: Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutBack,
    ));

    _animationVertical = Tween<Offset>(
      begin: Offset(0.0, 1.5),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutBack,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SlideTransition(
                    position: _animationHorizontal,
                    child: Header(title: 'Courses'),
                  ),
                  SlideTransition(
                    position: _animationVertical,
                    child: _Recommended(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.reverse().then((_) {
            Navigator.of(context).pop();
          });
        },
        child: Icon(Icons.keyboard_backspace),
      ),
    );
  }
}