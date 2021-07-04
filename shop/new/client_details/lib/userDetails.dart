import 'package:client_details/user.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  final User user;

  const UserDetails({Key key, this.user}) : super(key: key);
  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  User user;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.user = widget.user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        alignment: Alignment(0, 0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 25.0,
              spreadRadius: 7.0,
              offset: Offset(
                5.0,
                5.0,
              ),
            )
          ],
        ),
        child: Column(
          children: [
            SizedBox(
              height: 140,
            ),
            Image.network(user.avatar),
            SizedBox(
              height: 20,
            ),
            Text(
              'Id : ' + user.id.toString(),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Name : ' + user.first_name + ' ' + user.last_name,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Email : ' + user.email,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
