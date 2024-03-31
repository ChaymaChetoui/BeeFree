import 'package:flutter/material.dart';

import '../login/Login.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEFFC8),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 97,),
            Text("Welcome", style: TextStyle(fontSize:48,fontWeight: FontWeight.bold, color: Color(0xFFF0C339)),),
            Text("To", style: TextStyle(fontSize:48,fontWeight: FontWeight.bold,color: Color(0xFFF0C339))),
            Image.asset("assets/Logo.png"),
            SizedBox(height: 100,),

            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WelcomeOne()));
              },
              child: Container(
                  child: Image.asset("assets/fleche.png")),
            ),

            ],
        ),
      ),
    );
  }
}
