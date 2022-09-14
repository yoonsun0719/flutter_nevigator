import 'package:flutter/material.dart';
import 'package:nevigator/ScreenA.dart';
import 'package:nevigator/ScreenB.dart';
import 'package:nevigator/ScreenC.dart';

import 'ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);
  //nt counter = 0;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute : '/',
      routes: {
        '/' :(context) => ScreenA(),
        '/b':(context)=> ScreenB(),
        '/c':(context)=> ScreenC()
      },
    );
  }
}
