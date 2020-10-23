import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kboy/signup_update/signup_page_update.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have Account?',
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(color: kTextColorSecondary),
        ),
        SizedBox(width: 4),
        Text(
          'Sign up',
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(color: kTextColorPrimary),
        ),
      ],
    );
  }
}
