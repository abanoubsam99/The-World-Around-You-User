import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/Color.dart';
import 'package:the_world_around_you_user/SplashScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(getColorHexFromStr('#094470')),
          accentColor: Color(getColorHexFromStr('#F6F6F6'))
      ),
      home: SplashScreen(),
    );
  }
}
