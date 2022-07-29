import 'package:flutter/material.dart';

Future navigationHelper(BuildContext context, Widget screen,
    {bool isReplaced = false}) {
  return isReplaced
      ? Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => screen))
      : Navigator.push(
          context, MaterialPageRoute(builder: (context) => screen));
}
