import 'package:bee_free/chatBot/Chat.dart';
import 'package:flutter/material.dart';

import 'homePages/MainHomePage.dart';
import 'homePages/homePage.dart';
import 'login/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: HomePage(),
    );
  }
}

