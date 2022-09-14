import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context2) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Go to the second page'),
            onPressed: () {
              Navigator.push(context2, MaterialPageRoute(
                  builder:(BuildContext context){
                    return SecondPage();

                    /*onPressed: () {
                    Navigator.push(context2,
                      MaterialPageRoute(
                        builder:(context) => SecondPage()));*/

                  }
              ));
            }),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Go to the First Page'),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}

