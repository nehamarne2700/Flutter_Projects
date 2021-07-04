import 'dart:convert';
import 'dart:io';

import 'package:client_details/user.dart';
import 'package:client_details/userDetails.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<User> users = [];
  bool isLoding = true;
  void getData(int next) async {
    setState(() {
      isLoding = true;
    });
    String url = 'https://reqres.in/api/users?page=' + (next).toString();
    http.Response response = await http.get(url);
    List<dynamic> userRes = jsonDecode(response.body)['data'];
    print(userRes);
    users = [];
    setState(() {
      userRes.forEach((user) {
        users.add(User.fromJson(user));
      });
      isLoding = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              getData(1);
            },
          ),
          IconButton(
            icon: Icon(Icons.navigate_next),
            onPressed: () {
              getData(2);
            },
          ),
        ],
      ),
      body: isLoding
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    contentPadding: EdgeInsets.all(20),
                    title: Text(
                      users[index].first_name,
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UserDetails(
                              user: users[index],
                            ),
                          ));
                    },
                  ),
                );
              },
            ),
    );
  }
}
