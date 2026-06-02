import 'package:blog_app/screens/auth/signIn.dart';
import 'package:blog_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(padding: EdgeInsetsGeometry.symmetric(vertical: 120, horizontal: 20),
        child: Column(
          spacing: 0,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Create Your Account', style: TextStyle(fontSize: 30),),
            Row(
              spacing: -0,
              children: [
                Text('Do you already have an account?', style: TextStyle(fontSize: 16, color: Colors.black54),),
                TextButton( onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Signin()));
                },child: Text('SIGN IN',style: TextStyle(fontSize: 16, color: Color(0xFF0055FEE)))),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Form(
                child: Column(
                  spacing: 20,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsetsGeometry.symmetric(vertical: 10, horizontal: 10),
                        hintText: 'User Name',
                        hintStyle: TextStyle(color: Colors.black45),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)
                        )
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'First Name',
                        hintStyle: TextStyle(color: Colors.black45),
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsetsGeometry.symmetric(vertical: 10, horizontal: 10),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Last Name',
                        hintStyle: TextStyle(color: Colors.black45),
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsetsGeometry.symmetric(vertical: 10, horizontal: 10),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.black45),
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsetsGeometry.symmetric(vertical: 10, horizontal: 10),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                      },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF0055FEE),
                          foregroundColor: Colors.white,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                          )
                        ),
                        
                        child: Text('SIGN UP', style: TextStyle(fontSize: 15),),
                      ),
                    )
                  ],
            ))
          ],
        ),),
      ),
    );
  }
}
