import 'package:flutter/material.dart';
import 'package:flutter_kboy/signup_update/signup_page_update_footer.dart';
import 'package:flutter_kboy/signup_update/signup_page_update_header.dart';
import 'package:flutter_kboy/signup_update/signup_page_update_form.dart';

const Color kAccentColor = Color(0xFFFE7C64);
const Color kBackgroundColor = Color(0xFF19283D);
const Color kTextColorPrimary = Color(0xFFECEFF1);
const Color kTextColorSecondary = Color(0xFFB0BEC5);
const Color kButtonColorPrimary = Color(0xFFECEFF1);
const Color kButtonTextColorPrimary = Color(0xFF455A64);
const Color kIconColor = Color(0xFF455A64);

class SignupPageUpdate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              SignInForm(),
              Footer(),
              /* ここに、ヘッダー・フォーム・フッターを並べていく */
            ],
          ),
        ),
      ),
    );
  }
}