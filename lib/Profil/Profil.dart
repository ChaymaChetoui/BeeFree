import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEFFC8),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Stack(
                children: [


                  Positioned(


                    child: Container(
                      height: 280,
                      width: 280,
                      decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.only(

                         bottomRight: Radius.circular(4000),
                             // bottomLeft: Radius.circular(400)
                          ),

                      ),
                    ),
                  ),



                  Positioned(
                    top: 112,
                    right: 50,
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


                ],
              ),

          ],
        ),
      ),
    );
  }
}
