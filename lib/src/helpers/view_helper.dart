import 'package:flutter/cupertino.dart';

SizedBox spacer(double horizontal, double vertical) {
  return SizedBox(
    width: horizontal,
    height: vertical,
  );
}

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}
