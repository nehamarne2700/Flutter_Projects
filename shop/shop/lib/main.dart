import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('MyShop')),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
/*
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 60),
            Container(
              margin: EdgeInsets.all(40),
              child: Text("Hello Users..."),
            ),
            Container(
              margin: EdgeInsets.all(40),
              child: Text("Welcome to our Shop..."),
            ),
            SizedBox(height: 60)
          ],
        ),
      ),
    );
  }
}
*/
