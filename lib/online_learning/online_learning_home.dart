import 'package:flutter/material.dart';
import 'card/online_learning_featured_card.dart';
import 'card/online_learning_header_card.dart';
import 'card/online_learning_trending_card.dart';
import 'online_learning_courses.dart';

class OnlineLearning extends StatefulWidget{
  @override
  _OnlineLearning createState() => _OnlineLearning();
}

class _OnlineLearning extends State with SingleTickerProviderStateMixin{
  AnimationController _controller;
  Animation<Offset> _animation1;
  Animation<Offset> _animation2;
  Animation<Offset> _animation3;
  Animation<Offset> _animation4;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    final tween = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(-1.0, 0.0),
    );

    _animation1 = tween.animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.7, curve: Curves.easeInOutBack)
    ));
    _animation2 = tween.animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.1, 0.8, curve: Curves.easeInOutBack)
    ));
    _animation3 = tween.animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.2, 0.9, curve: Curves.easeInOutBack)
    ));
    _animation4 = tween.animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.3, 1.0, curve: Curves.easeInOutBack)
    ));
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Online Learning")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SlideTransition(
                  position: _animation1,
                  child: Header(title: 'TurtleU'),
                ),
                SlideTransition(
                  position: _animation2,
                  child: HeroCard(),
                ),
                SlideTransition(
                  position: _animation3,
                  child: Featured(),
                ),
                SlideTransition(
                  position: _animation4,
                  child: TrendingCourses(),
                ),
              ],
            )
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.forward().then((_) {
            Navigator.of(context)
                .push(
              PageRouteBuilder(pageBuilder: (_, __, ___) => CoursesPage()),
            ).then((_) => _controller.reverse());
          });
        },
        child: Icon(Icons.list),
      ),
    );
  }
}

