import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_demo/tools.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController emailCon = TextEditingController();
  TextEditingController passCon = TextEditingController();
  FocusNode emailNode = FocusNode();
  FocusNode passNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    Widget networkSvg = SvgPicture.network(
      'https://static.xx.fbcdn.net/rsrc.php/y1/r/4lCu2zih0ca.svg',
      semanticsLabel: 'Facebook!',
      width: AppSize.getWidth(context, 280),
      height: AppSize.getHeight(context, 280),

      placeholderBuilder: (BuildContext context) => Container(
          padding: EdgeInsets.only(left:AppSize.getWidth(context, 16),bottom: 0),
          child: const CircularProgressIndicator()),
    );
    return Scaffold(
      backgroundColor:  Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                networkSvg,
                Padding(
                  padding: EdgeInsets.only(
                    top: 0,
                    left: AppSize.getWidth(context, 16),
                    bottom: AppSize.getHeight(context, 16),
                  ),
                  child: Text(
                    'Connect with friends and the world',
                    style:
                        TextStyle(fontSize: AppSize.getFontSize(context, 16)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 0,
                    left: AppSize.getWidth(context, 16),
                    bottom: AppSize.getHeight(context, 16),
                  ),
                  child: Text(
                    'around you on Facebook.',
                    style: TextStyle(fontSize: AppSize.getFontSize(context, 16)),
                  ),
                ),
                Row(
                  children: [Container(), Container(), Container()],
                ),
              ],
            ),
            SizedBox(
              width: AppSize.getWidth(context, 100),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSize.getWidth(context, 8),
                    vertical: AppSize.getHeight(context, 64)),
                child: Column(
                  children: [
                    SizedBox(
                      width: AppSize.getWidth(context, 240),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null) {
                            return "Please confirm your email";
                          }
                          return null;
                        },
                        controller: emailCon,
                        focusNode: emailNode,
                        decoration: getInputDec(context),
                        onEditingComplete: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                        },
                      ),
                    ),
                    SizedBox(height: AppSize.getHeight(context, 32)),
                    SizedBox(
                      width: AppSize.getWidth(context, 240),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null) {
                            return "Please enter your password";
                          }
                          return null;
                        },
                        controller: passCon,
                        focusNode: passNode,
                        decoration: getInputDec(context),
                        onEditingComplete: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                        },
                      ),
                    ),
                    SizedBox(
                      height: AppSize.getHeight(context,40),
                    ),
                    SizedBox(
                      width: AppSize.getWidth(context, 240),
                      height: AppSize.getHeight(context, 140),
                      child: FloatingActionButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        backgroundColor: Colors.blueAccent,
                        child: Text(
                          'Log In',
                          style: TextStyle(
                              fontSize: AppSize.getFontSize(context, 14),
                              color: Colors.white,
                          fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    SizedBox(height: AppSize.getHeight(context, 40)),
                    Text(
                      'Forgot password?',
                      style: TextStyle(
                          fontSize: AppSize.getFontSize(context, 10),
                          color: Colors.blueAccent),
                    ),
                    SizedBox(height: AppSize.getHeight(context, 16)),
                    SizedBox(
                      width: AppSize.getWidth(context, 240),
                      child: const Divider(
                        color: Colors.grey,
                        height: 10,
                      ),
                    ),
                    SizedBox(height: AppSize.getHeight(context, 48)),
                    SizedBox(
                      width: AppSize.getWidth(context, 160),
                      height: AppSize.getHeight(context, 140),
                      child: FloatingActionButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: Colors.lightGreen,
                        child: Text(
                          'Create new account',
                          style: TextStyle(
                              fontSize: AppSize.getFontSize(context, 12),
                              color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
