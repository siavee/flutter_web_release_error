import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_release_error/api/api.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('Sign In'),
            onPressed: () {
              Provider.of<AuthService>(context).signIn();
            },
          ),
          RaisedButton(
            child: Text('Sign In as Admin'),
            onPressed: () {
              Provider.of<AuthService>(context).signInAsAdmin();
            },
          ),
        ]
      ),
    );
  }
}