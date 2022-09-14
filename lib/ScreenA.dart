import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  //const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenA'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
                color: Colors.red,
                child: Text('Go to ScreenB'),
                onPressed: () {
                  Navigator.pushNamed(context, '/b');
                }),
            FlatButton(
                color: Colors.blue,
                child: Text('Go to ScreenC'),
                onPressed: () {
                  Navigator.pushNamed(context, '/c');
                }),
          ],
        ),
      ),
    );
  }
}
