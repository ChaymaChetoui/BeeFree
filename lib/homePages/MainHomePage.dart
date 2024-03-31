import 'package:bee_free/chatBot/Chat.dart';
import 'package:flutter/material.dart';
class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEFFC8),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(

              height: 100,
              width: 100,
              child:Image.asset('assets/1.png',fit: BoxFit.cover,),),
          SizedBox(height: 10,),
          Center(child: Column(
            children: [
              Text("Feel Free",style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold),),

              Text("and",style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold),),

              Text("Talk",style: TextStyle(fontSize: 96,color:Color(0xFFF0C339),fontWeight: FontWeight.bold ),


          ),],),),


            SizedBox(height: 10,),

            Center(

              child: Stack(
                children: [

                  Positioned(

                    child: Container(
                    height: 280,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Color(0xFFFEFFC8),
                      borderRadius: BorderRadius.circular(280),
                      border: Border.all(
                        color: Color(0xFFF0C339),width: 3
                      )
                    ),
                  ),
                  ),


                  Positioned(
                    top: 32,
                    right: 32,
                    child: Container(
                    height: 215,
                    width: 215,
                    decoration: BoxDecoration(
                        color: Color(0xFFF0C339),
                        borderRadius: BorderRadius.circular(280),
                        border: Border.all(
                            color: Color(0xFFF0C339),width: 3
                        )
                    ),
                  ),
                  ),

                  Positioned(
                      top: 80,
                      right: 90,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatScreen()));
                          },
                          child: Icon(Icons.keyboard_voice_outlined,size: 100,)))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
