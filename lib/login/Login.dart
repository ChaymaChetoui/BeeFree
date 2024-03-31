import 'package:flutter/material.dart';

import '../homePages/MainHomePage.dart';

class WelcomeOne extends StatefulWidget {
  const WelcomeOne({Key? key}) : super(key: key);

  @override
  State<WelcomeOne> createState() => _WelcomeOneState();
}

class _WelcomeOneState extends State<WelcomeOne> {

  PageController _pageController = PageController(initialPage: 0);



  double _backgroundImagePosition = 0;
  double _lastOffset =0;

  bool showSignUpForm = false;
  bool showSignUptwoForm= false;

  void _switchToSignUpForm() {
    setState(() {
      showSignUpForm = true;
    });
  }

  void _switchToSignInForm() {
    setState(() {
      showSignUpForm = false;
    });
  }
  void _switchToSignUptwoForm() {
    setState(() {
      showSignUpForm = false;
    });
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFFEFFC8),
      body: SizedBox.expand(
        child: Stack(
          children: [
            Image.asset("assets/Logo.png"),


        Positioned(
          top: 650,
          right: 165,

          child: Center(
            child: Container(
              child: Image.asset("assets/fleche.png")),
          ),
        ),






      SizedBox(
              // height: MediaQuery.of(context).size.height * 0.7,

              child: Listener(
                onPointerMove: (details) {
                  // Update the position of the background image based on the position of the sheet
                  setState(() {
                    _backgroundImagePosition = details.delta.dy-450;

                    // If the user swipes down and the background image position is greater than zero, reset it to zero
                    if (details.delta.dy >0 && _backgroundImagePosition < -MediaQuery.of(context).size.height * 0.8) {
                      _backgroundImagePosition = -MediaQuery.of(context).size.height ;
                    } else if (details.delta.dy >0 && _backgroundImagePosition > 0) {
                      _backgroundImagePosition = 0;
                    }

                    _lastOffset = details.delta.dy;

                  }
                  );
                },


                child: DraggableScrollableSheet(
                  snap: true,
                  initialChildSize: 0.1, // This sets the initial height of the sheet
                  minChildSize: 0.1, // This sets the minimum height of the sheet
                  maxChildSize: 0.4, // This sets the maximum height of the sheet
                  builder: (BuildContext context, ScrollController scrollController) {
                    return Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
                        ),
                        child: ListView(
                            physics: ClampingScrollPhysics(),
                            padding: EdgeInsets.only(top:45,right: 17,left: 17,bottom:16),
                            controller: scrollController,
                            children:[
                              Container(

                                height: 400,
                                child: PageView(
                                  //padding: EdgeInsets.only(top:45,right: 17,left: 17,bottom:16),
                                    controller: _pageController,
                                    children:[
                                      Form(

                                          child: Column(

                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                // SizedBox(height: 40,),


                                                SizedBox(height: 17,),
                                                Container(

                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("E-mail or Username"),
                                                      Container(
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.circular(10)
                                                        ),
                                                        child:
                                                      TextFormField(

                                                        decoration: InputDecoration(
                                                          contentPadding: EdgeInsets.symmetric(vertical:15 , horizontal: 12),
                                                          border: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Color(0xFFFFFFFF),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius: BorderRadius.circular(10)
                                                          ),
                                                          focusedBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Color(0xFFFFFFFF),
                                                                width: 1.0,

                                                              )


                                                              ,borderRadius: BorderRadius.circular(10)
                                                          ),


                                                        ),
                                                      ),)
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 17),
                                                Container(


                                                  child: Column(

                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Password"),

                                                      Container(
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(10)
                                                        ),
                                                        
                                                        child: TextFormField(

                                                          onSaved: (input) {},
                                                          decoration:
                                                          InputDecoration(
                                                              contentPadding: EdgeInsets.symmetric(vertical:15 ,horizontal: 10),
                                                              border: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(0xFFE9E9E9),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius: BorderRadius.circular(10)
                                                              ),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                    color: Color(0xFFE9E9E9),
                                                                    width: 1.0,

                                                                  )
                                                                  ,borderRadius: BorderRadius.circular(10)
                                                              ),

                                                              hintStyle: TextStyle(color: Colors.black54,fontWeight: FontWeight.w400,fontSize: 14)

                                                          ),
                                                          obscureText: true,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 4),

                                                SizedBox(height: 34,),
                                                Container(
                                                  width: 216,
                                                  height: 52,

                                                  child:ElevatedButton(

                                                    onPressed: () {
                                                      // Add your button click logic here
                                                    },
                                                    child: GestureDetector(

                                                        onTap: (){
                                                          Navigator.push(context,MaterialPageRoute(builder: (context) => MainHomePage()));
                                                        },
                                                        child: Text('Login',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,color: Colors.black),)),
                                                    style: ButtonStyle(
                                                      elevation: null,

                                                      backgroundColor: MaterialStateColor.resolveWith((states) => Color(0xFFFEFFC7)
                                                      ),
                                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                        RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(10.0),
                                                        ),
                                                      ),

                                                    ),


                                                  ),
                                                ),
                                                SizedBox(height: 28,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children:[
                                                    GestureDetector(
                                                        onTap:() {
                                                          _pageController.animateToPage(1, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
                                                        },
                                                        child: Text('signUp')
                                                    ),
                                                  ],

                                                )


                                              ]
                                          )
                                      ),
                                      Form(
                                        child: Column(
                                            children: <Widget>[


                                              SizedBox(height: 20,),

                                              Container(

                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Name"),
                                                    SizedBox(height: 6,),
                                                    TextFormField(
                                                      onSaved: (input) {},
                                                      decoration: InputDecoration(
                                                          contentPadding: EdgeInsets.symmetric(vertical:15 ,horizontal: 10),
                                                          border: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Color(0xFFE9E9E9),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius: BorderRadius.circular(10)
                                                          ),
                                                          focusedBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Color(0xFFE9E9E9),
                                                                width: 1.0,

                                                              )
                                                              ,borderRadius: BorderRadius.circular(10)
                                                          ),
                                                          hintText: 'Name..',
                                                          hintStyle: TextStyle(color: Colors.black54,fontWeight: FontWeight.w400,fontSize: 14)

                                                      ),
                                                      obscureText: true,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 17),
                                              Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Surname"),
                                                    SizedBox(height: 6,),
                                                    TextFormField(
                                                      onSaved: (input) {},
                                                      decoration: InputDecoration(
                                                          contentPadding: EdgeInsets.symmetric(vertical:15 ,horizontal: 10),
                                                          border: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Color(0xFFE9E9E9),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius: BorderRadius.circular(10)
                                                          ),
                                                          focusedBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Color(0xFFE9E9E9),
                                                                width: 1.0,

                                                              )
                                                              ,borderRadius: BorderRadius.circular(10)
                                                          ),
                                                          hintText: 'Surname..',
                                                          hintStyle: TextStyle(color: Colors.black54,fontWeight: FontWeight.w400,fontSize: 14)

                                                      ),
                                                      obscureText: true,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 16.0),
                                              Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Username"),
                                                    SizedBox(height: 6,),
                                                    TextFormField(
                                                      onSaved: (input) {},
                                                      decoration: InputDecoration(
                                                          contentPadding: EdgeInsets.symmetric(vertical:15 ,horizontal: 10),
                                                          border: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Color(0xFFE9E9E9),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius: BorderRadius.circular(10)
                                                          ),
                                                          focusedBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Color(0xFFE9E9E9),
                                                                width: 1.0,

                                                              )
                                                              ,borderRadius: BorderRadius.circular(10)
                                                          ),
                                                          hintText: 'Username..',
                                                          hintStyle: TextStyle(color: Colors.black54,fontWeight: FontWeight.w400,fontSize: 14)

                                                      ),
                                                      obscureText: true,
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              SizedBox(height: 34,),
                                              Container(
                                                width:193,
                                                height: 52,

                                                child:ElevatedButton(

                                                    onPressed:
                                                        (){

                                                      _pageController.animateToPage(2, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);

                                                    }
                                                    // Add your button click logic here
                                                    ,
                                                    child: Text('Next'),
                                                    style: ButtonStyle(

                                                      elevation: null,

                                                      backgroundColor: MaterialStateColor.resolveWith((states) => Color(0xFFFED540)
                                                      ),
                                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                        RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(30.0),
                                                        ),
                                                      ),

                                                    )
                                                ),
                                              ),


                                            ]

                                        ),
                                      ),
                                      Form(
                                        child: Column(
                                            children: <Widget>[


                                              SizedBox(height: 20,),

                                              Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Email"),
                                                    SizedBox(height: 6,),
                                                    TextFormField(
                                                      onSaved: (input) {},
                                                      decoration: InputDecoration(
                                                          contentPadding: EdgeInsets.symmetric(vertical:15 ,horizontal: 10),
                                                          border: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Color(0xFFE9E9E9),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius: BorderRadius.circular(10)
                                                          ),
                                                          focusedBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Color(0xFFE9E9E9),
                                                                width: 1.0,

                                                              )
                                                              ,borderRadius: BorderRadius.circular(10)
                                                          ),
                                                          hintText: 'Email..',
                                                          hintStyle: TextStyle(color: Colors.black54,fontWeight: FontWeight.w400,fontSize: 14)

                                                      ),
                                                      obscureText: true,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 17),
                                              Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Password"),
                                                    SizedBox(height: 6,),
                                                    TextFormField(
                                                      onSaved: (input) {},
                                                      decoration: InputDecoration(
                                                          contentPadding: EdgeInsets.symmetric(vertical:15 ,horizontal: 10),
                                                          border: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Color(0xFFE9E9E9),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius: BorderRadius.circular(10)
                                                          ),
                                                          focusedBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Color(0xFFE9E9E9),
                                                                width: 1.0,

                                                              )
                                                              ,borderRadius: BorderRadius.circular(10)
                                                          ),
                                                          hintText: 'Password..',
                                                          hintStyle: TextStyle(color: Colors.black54,fontWeight: FontWeight.w400,fontSize: 14)

                                                      ),
                                                      obscureText: true,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 16.0),
                                              Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Confirm Password"),
                                                    SizedBox(height: 6,),
                                                    TextFormField(
                                                      onSaved: (input) {},
                                                      decoration: InputDecoration(
                                                          contentPadding: EdgeInsets.symmetric(vertical:15 ,horizontal: 10),
                                                          border: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Color(0xFFE9E9E9),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius: BorderRadius.circular(10)
                                                          ),
                                                          focusedBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Color(0xFFE9E9E9),
                                                                width: 1.0,

                                                              )
                                                              ,borderRadius: BorderRadius.circular(10)
                                                          ),
                                                          hintText: 'Confirm Password..',
                                                          hintStyle: TextStyle(color: Colors.black54,fontWeight: FontWeight.w400,fontSize: 14)

                                                      ),
                                                      obscureText: true,
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              SizedBox(height: 34,),
                                              Container(
                                                width:193,
                                                height: 52,

                                                child:ElevatedButton(

                                                    onPressed:
                                                        (){

                                                      Navigator.push(context,MaterialPageRoute(builder: (context) => MainHomePage()));

                                                    }
                                                    // Add your button click logic here
                                                    ,
                                                    child: Text('Login'),
                                                    style: ButtonStyle(

                                                      elevation: null,

                                                      backgroundColor: MaterialStateColor.resolveWith((states) => Color(0xFFFED540)
                                                      ),
                                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                        RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(30.0),
                                                        ),
                                                      ),

                                                    )
                                                ),
                                              ),


                                            ]

                                        ),
                                      )





                                    ]
                                ),
                              ),
                            ]));
                  }

                  ,),
              ),

            )


          ],
        ),
      ),



    );
  }
}