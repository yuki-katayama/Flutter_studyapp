import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kboy/admin_mobile_post_header.dart';

class AdminMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AdminMobile")),
      body: Row(
        children: [
          SideNavigation(),
          VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: PostList(),
          ),
          // AdminMobilePostHeader(),
        ],
      )
    );
  }
}

class SideNavigation extends StatefulWidget{
  @override
  _SideNavigation createState() => _SideNavigation();
}

class _SideNavigation extends State {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      destinations: [
        NavigationRailDestination(
          icon: Icon(Icons.thumbs_up_down),
          label: Text("thumbs_up_down"),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.desktop_windows),
          label: Text("desktop_windows"),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.access_alarm),
          label: Text("accsess_alarm"),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.edit),
          label: Text("edit"),
        ),
      ],
    );
  }
}