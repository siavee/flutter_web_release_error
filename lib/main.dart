import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_release_error/api/api.dart';

import 'package:web_release_error/screens/admin.dart';
import 'package:web_release_error/screens/home.dart';
import 'package:web_release_error/screens/login.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<AuthService>(create: (_) => AuthService()),
    ],
    child: MyApp()
  ));
}

class MyApp extends StatelessWidget {
  Widget buildHome(AuthService authService) {
    print('buildHome called ${authService.currentUser}');
    if (authService.currentUser != null) {
      if (authService.isAdmin == true){
        return AdminScreen();
      } else {
        return HomeScreen();
      }
    }
    return LoginScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthService>(
      builder: (_, authService, child) {
        print('auth service consumer called ${authService.currentUser}');
        return MaterialApp(
          title: 'App',
          home: buildHome(authService),
        );
      },
    );
  }
}
