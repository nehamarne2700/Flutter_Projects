import 'package:client_details/Dashboard.dart';
import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  TextEditingController _username = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              _username.clear();
              _password.clear();
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 130,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _username,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'username'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _password,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'password'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              color: new Color(0xff622F74),
              child: Text('Login',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              onPressed: () {
                if (_username.text == 'Admin' && _password.text == 'Admin') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dashboard()));
                } else {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Error!'),
                          content: Text('Invalid Username or Password'),
                        );
                      });
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
