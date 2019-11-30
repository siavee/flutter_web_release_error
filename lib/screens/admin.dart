import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_release_error/api/api.dart';

class AdminScreen extends StatefulWidget {
  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text('Admin Screen'),
          RaisedButton(
            child: Text('Logout'),
            onPressed: () {
              Provider.of<AuthService>(context).signOut();
            },
          ),
        ]
      ),
    );
  }
}