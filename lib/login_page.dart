import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State{
  String infoText = '';
  
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration:  InputDecoration(
                  labelText: "メールアドレス"
                ),
                onChanged: (String value){
                  setState(() {
                    email = value;
                  });
                },
              ),
              TextFormField(
                decoration:  InputDecoration(
                    labelText: "パスワード"
                ),
                obscureText: true,
                onChanged: (String value){
                  setState(() {
                    password = value;
                  });
                },
              ),
            ],
          )
        )
      )
    );
  }
}