import 'package:flutter/material.dart';
import 'package:flutter_kboy/firebase_auth/firestore_page.dart';
import 'package:flutter_kboy/color_list.dart';
import 'package:flutter_kboy/long_list.dart';
import 'package:flutter_kboy/online_learning/online_learning_courses.dart';
import 'package:flutter_kboy/online_learning/online_learning_home.dart';
import 'package:flutter_kboy/signup.dart';
import 'package:flutter_kboy/text.dart';
import 'package:flutter_kboy/grid_list.dart';
import 'package:flutter_kboy/textformfield_ui.dart';
import'package:flutter_kboy/use_provider/data_control.dart';
import'package:flutter_kboy/stateful.dart';
import'package:flutter_kboy/login_page.dart';
import'package:flutter_kboy/admin_mobile/admin_mobile.dart';
import'package:flutter_kboy/signup_update/signup_page_update.dart';
import'package:flutter_kboy/flower_shop/screens/home_screen.dart';
import'package:flutter_kboy/flutter_firebase.dart';

import 'animation_practice.dart';
import 'battery_optimizer/battery_optimizer_home.dart';


class Next4 extends StatelessWidget {

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
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Firebase Auth'),
              trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AuthTypeSelector()),
                  );
                }
            ),
            ListTile(
                leading: Icon(Icons.people),
                title: Text('Firebase Firestore'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FlutterFirebase()),
                  );
                }
            ),
            ListTile(
              leading: Icon(Icons.more_horiz),
              title: Text('color && horizantal list'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ColorList()),
                  );
                }
            ),
            ListTile(
              leading: Icon(Icons.format_line_spacing),
              title: Text('very long list'),
              trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LongList()),
                  );
                }
            ),
            ListTile(
              leading: Icon(Icons.text_format),
              title: Text('Text_setting'),
              trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TextPage()),
                  );
                }
            ),
            ListTile(
              leading: Icon(Icons.grid_on),
              title: Text('grid_list'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GridList()),
                  );
                }
            ),
            ListTile(
              leading: Icon(Icons.perm_data_setting),
              title: Text('データ操作'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DataContorol()),
                  );
                }
            ),
            ListTile(
              leading: Icon(Icons.all_inclusive),
              title: Text('Stateful'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Stateful()),
                  );
                }
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle),
              title: Text('Login'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                }
            ),
            ListTile(
                leading: Icon(Icons.view_quilt),
                title: Text('AdminMobile'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdminMobile()),
                  );
                }
            ),
            ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('signup page'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                }
            ),
            ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('signup page update'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPageUpdate()),
                  );
                }
            ),
            ListTile(
                leading: Icon(Icons.local_florist),
                title: Text('Flower Shop UI'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FlowerShopUI()),
                  );
                }
            ),
            ListTile(
                leading: Icon(Icons.graphic_eq),
                title: Text('Battery Optimizer'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BatteryOptimizerHome()),
                  );
                }
            ),
            ListTile(
                leading: Icon(Icons.animation),
                title: Text('Animation_Practice'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  AnimationPractice()),
                  );
                }
            ),
            ListTile(
                leading: Icon(Icons.book_online_outlined),
                title: Text('Online Learning'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  OnlineLearning()),
                  );
                }
            ),
            ListTile(
                leading: Icon(Icons.video_collection_outlined),
                title: Text('video player'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  TextFormFieldUi()),
                  );
                }
            ),
            RaisedButton(
              child: Text("戻る"),
              color: Colors.limeAccent,
              splashColor: Colors.black54,
              shape: StadiumBorder(), //角丸
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}