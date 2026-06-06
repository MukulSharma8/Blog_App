import 'package:blog_app/screens/auth/register.dart';
import 'package:blog_app/screens/home/article_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0055FEE),
        title: Row(
          spacing: 190,
            children: [
              Text('Home', style: TextStyle(fontSize: 40),),
              IconButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Register()));
              }, icon: Icon(Icons.logout))
            ]
        )
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: ListView(
          children: [
            Article(),
            SizedBox(height: 10),
            Article(),
            SizedBox(height: 10),
            Article(),
            SizedBox(height: 10),
            Article(),
            SizedBox(height: 10),
            Article(),
            SizedBox(height: 10),
            Article(),
            SizedBox(height: 10),
            Article(),
          ],
        ),
      ),
    );
  }
}

class Article extends StatelessWidget {
  const Article({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ArticlePage()));
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage('assets/images/image.png'),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What is the best way to manage state in flutter',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),

                      SizedBox(height: 4),

                      Text(
                        'Emre Varol',
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 18),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
              style: TextStyle(color: Colors.black54, fontSize: 18, height: 1.4),
            ),
          ],
        ),
      ),
    );
  }
}
