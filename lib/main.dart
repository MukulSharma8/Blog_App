import 'package:blog_app/screens/auth/register.dart';
import 'package:blog_app/screens/auth/signIn.dart';
import 'package:blog_app/screens/auth/signup.dart';
import 'package:blog_app/screens/home/home_screen.dart';
import 'package:blog_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(BlogApp());
}

class BlogApp extends StatelessWidget {
  const BlogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
