import 'package:blog_app/screens/auth/signIn.dart';
import 'package:blog_app/screens/auth/signup.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 100, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/images/Graphics.png')),
            SizedBox(height: 25),
            Text('Hey! Welcome', style: TextStyle(fontSize: 25, height: 2)),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam egestas rhoncus lectus rhoncus, tempor.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              child: Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Signin()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF005FEE),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text('SIGN IN', style: TextStyle(fontSize: 15)),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF005FEE),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text(
                    'CREATE AN ACCOUNT',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
