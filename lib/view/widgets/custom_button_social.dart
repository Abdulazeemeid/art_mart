import 'package:art_mart/constance.dart';
import 'package:flutter/material.dart';

class LoginWithSocial extends StatelessWidget {

  final Color socialButtonColor;
  final String text;
  final iconbut;
  final VoidCallback onpress;

  const LoginWithSocial({
    Key? key,
    this.socialButtonColor=myPrimaryColor,
    this.text='',
    this.iconbut=Icons.add_to_home_screen,
    required this.onpress,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onpress,
      icon: Icon(iconbut),
      label: Text(text),
      style: ElevatedButton.styleFrom(
        primary: socialButtonColor,

      ),
    );
  }
}
