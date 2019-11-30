import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_release_error/api/api.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text('Home Screen'),
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