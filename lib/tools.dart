import 'package:flutter/material.dart';
class AppSize {
  static const double _baseWidth = 825.3;
  static const double _baseHeight = 1707.3;
  static double getWidth(BuildContext context,double size){
    return size* MediaQuery.of(context).size.width/_baseWidth;
  }
  static double getHeight(BuildContext context,double size){
    return size* MediaQuery.of(context).size.height/_baseHeight;
  }
  static double getFontSize(BuildContext context, double fontSize){
    return fontSize* MediaQuery.of(context).size.width/_baseWidth;
  }
}