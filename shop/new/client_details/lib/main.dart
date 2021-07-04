import 'package:flutter/material.dart';
import 'login.dart';
import 'Dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'app',
      theme: ThemeData(primaryColor: new Color(0xff622F74)),
      home: loginpage(),
    );
  }
}
