import 'package:blog_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Article', style: TextStyle( color: Colors.white, fontSize: 30)),
        backgroundColor: Color(0xFF0055FEE),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 50, horizontal: 30),
                child: Column(
                  spacing: 20,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Emre Varol', style: TextStyle(fontSize: 25),),
                    Text("Flutter has become one of the most popular frameworks for cross-platform mobile application development. Created by Google, Flutter allows developers to build applications for Android, iOS, web, desktop, and even embedded devices using a single codebase. One of the key reasons behind Flutter's popularity is its fast development cycle. Features such as Hot Reload enable developers to instantly see changes in the user interface without restarting the application, significantly improving productivity and reducing development time.Another major advantage of Flutter is its rich collection of customizable widgets. Everything in Flutter is a widget, from simple text elements to complex layouts and animations. This widget-based architecture provides developers with complete control over the appearance and behavior of their applications. Unlike many other frameworks that rely heavily on native UI components, Flutter renders its own widgets, ensuring a consistent user experience across different platforms."),
                    ElevatedButton(
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF0055FEE),
                          foregroundColor: Colors.white,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                        child: Text('More Articles'))
                  ],
                ),
        ),
      ),
    );
  }
}
