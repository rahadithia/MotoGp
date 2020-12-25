import 'package:flutter/material.dart';
import 'dart:async';
import 'package:motogp_apk/bot_nav.dart';

class SplashScreenPage extends StatefulWidget{
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState(){
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async{
    var duration = const Duration(seconds: 3);
    return Timer(duration,(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_){
          return Home();
        }),
      );
    });
  }

  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Center(
        child: Image.asset(
          "img/logo1.png",
          width: 300.0,
          height: 150.0,
        ),
      ),
    );
  }
}