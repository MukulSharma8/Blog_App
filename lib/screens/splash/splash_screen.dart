import 'dart:async';
import 'package:blog_app/screens/auth/register.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();

    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Register()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF005FEE),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox( height: 220,),
            Text('Blog', style: TextStyle(fontSize: 110, color: Colors.white,height: 1),textAlign: TextAlign.center,),
            Text('App', style: TextStyle(fontSize: 110, color: Colors.white, height: 1),textAlign: TextAlign.center,),
            Spacer(),
            Padding(

              padding: const EdgeInsets.only(bottom: 60),
              child: Text('By Its Owner', style: TextStyle(color: Colors.white, fontSize: 20),),
            )
          ],
        ),
      ),
    );
  }
}
