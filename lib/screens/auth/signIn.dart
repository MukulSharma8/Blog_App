import 'package:blog_app/screens/auth/signup.dart';
import 'package:blog_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 170, horizontal: 20),
          child: Column(
            spacing: 0,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sign In', style: TextStyle(fontSize: 30)),
              Row(
                spacing: 0,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    },
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(fontSize: 16, color: Color(0xFF0055FEE)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 20,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        hintText: 'User Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.check_box, color: Color(0xFF0055FEE)),
                        Text('Rememmber Me'),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF0055FEE),
                          foregroundColor: Colors.white,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Text('SIGN IN'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
