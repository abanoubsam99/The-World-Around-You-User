import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_world_around_you_user/Cities/Screens/CitiesScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

 // AnimationController _controller;
  //Animation<double> _animation;
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => CitiesScreen()));
    });

/*
    //Animation
    _controller=AnimationController(vsync: this, duration: Duration(seconds: 5 ),
    )..repeat(reverse: true);

    _animation=CurvedAnimation(parent: _controller, curve: Curves.linear);
*/
/*
    //Rotation Animation
    _controller =
    AnimationController(duration: Duration(seconds: 5), vsync: this)
      ..repeat();
*/
    print("Splash");

    // Start full screen
    SystemChrome.setEnabledSystemUIOverlays([]);

    super.initState();
  }
  @override
  void dispose() {
  //  _controller.dispose();
    // Exit full screen
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        SizedBox(height: 0,),
          Image.asset("Assets/logo.png"),
      Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text("  تم تطويره بواسطة فريق ابو الدهب 2021 ",style: TextStyle(color: Colors.black),),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(" 01227120519",style: TextStyle(color: Colors.black),),
              Image.asset("Assets/icons/whatsapp.png",width: 20,height: 20,)
            ],),
          ],
        ),
      )
      ],),
    );

  }
}

