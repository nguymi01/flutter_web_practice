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
// List<Widget> horizontalDisplay(BuildContext context,Widget image){
//   return <Widget>[
//     Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         image,
//         Padding(
//           padding: EdgeInsets.only(
//             top: 0,
//             left: AppSize.getWidth(context, 16),
//             bottom: AppSize.getHeight(context, 16),
//           ),
//           child: Text(
//             'Connect with friends and the world',
//             style:
//             TextStyle(fontSize: AppSize.getFontSize(context, 16)),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.only(
//             top: 0,
//             left: AppSize.getWidth(context, 16),
//             bottom: AppSize.getHeight(context, 16),
//           ),
//           child: Text(
//             'around you on Facebook.',
//             style: TextStyle(fontSize: AppSize.getFontSize(context, 16)),
//           ),
//         ),
//         Row(
//           children: [Container(), Container(), Container()],
//         ),
//       ],
//     ),
//     SizedBox(
//       width: AppSize.getWidth(context, 100),
//     ),
//     Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(8),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 5,
//             blurRadius: 7,
//             offset: const Offset(0, 3), // changes position of shadow
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: EdgeInsets.symmetric(
//             horizontal: AppSize.getWidth(context, 8),
//             vertical: AppSize.getHeight(context, 64)),
//         child: Column(
//           children: [
//             SizedBox(
//               width: AppSize.getWidth(context, 240),
//               child: TextFormField(
//                 validator: (value) {
//                   if (value == null) {
//                     return "Please confirm your email";
//                   }
//                   return null;
//                 },
//                 controller: emailCon,
//                 focusNode: emailNode,
//                 decoration: getInputDec(context),
//                 onEditingComplete: () {
//                   FocusScope.of(context).requestFocus(FocusNode());
//                 },
//               ),
//             ),
//             SizedBox(height: AppSize.getHeight(context, 32)),
//             SizedBox(
//               width: AppSize.getWidth(context, 240),
//               child: TextFormField(
//                 validator: (value) {
//                   if (value == null) {
//                     return "Please enter your password";
//                   }
//                   return null;
//                 },
//                 controller: passCon,
//                 focusNode: passNode,
//                 decoration: getInputDec(context),
//                 onEditingComplete: () {
//                   FocusScope.of(context).requestFocus(FocusNode());
//                 },
//               ),
//             ),
//             SizedBox(
//               height: AppSize.getHeight(context,40),
//             ),
//             SizedBox(
//               width: AppSize.getWidth(context, 240),
//               height: AppSize.getHeight(context, 140),
//               child: FloatingActionButton(
//                 onPressed: () {},
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(16)),
//                 backgroundColor: Colors.blueAccent,
//                 child: Text(
//                   'Log In',
//                   style: TextStyle(
//                       fontSize: AppSize.getFontSize(context, 14),
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700),
//                 ),
//               ),
//             ),
//             SizedBox(height: AppSize.getHeight(context, 40)),
//             Text(
//               'Forgot password?',
//               style: TextStyle(
//                   fontSize: AppSize.getFontSize(context, 10),
//                   color: Colors.blueAccent),
//             ),
//             SizedBox(height: AppSize.getHeight(context, 16)),
//             SizedBox(
//               width: AppSize.getWidth(context, 240),
//               child: const Divider(
//                 color: Colors.grey,
//                 height: 10,
//               ),
//             ),
//             SizedBox(height: AppSize.getHeight(context, 48)),
//             SizedBox(
//               width: AppSize.getWidth(context, 160),
//               height: AppSize.getHeight(context, 140),
//               child: FloatingActionButton(
//                 onPressed: () {},
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8)),
//                 backgroundColor: Colors.lightGreen,
//                 child: Text(
//                   'Create new account',
//                   style: TextStyle(
//                       fontSize: AppSize.getFontSize(context, 12),
//                       color: Colors.white,fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     )
//   ];
// }