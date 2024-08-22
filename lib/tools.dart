import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
InputDecoration getInputDec(BuildContext context){
  return InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical:AppSize.getHeight(context, 48),horizontal: AppSize.getWidth(context, 12)),
      border: OutlineInputBorder(
        borderSide: const BorderSide(
          color: CupertinoColors.lightBackgroundGray,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide:
        const BorderSide(color: Colors.blueAccent),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color(0xffd2d3d3),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      floatingLabelStyle:
      const TextStyle(color: Color(0xffe1e2e1)),
      labelText: "Password",
      labelStyle:
      TextStyle(color: Color(0xffd2d3d3),fontSize: AppSize.getFontSize(context, 12)),
      fillColor: Colors.white,
      filled: true);
}