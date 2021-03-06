import 'package:flutter/material.dart';
// import 'package:valuemissaccoapi/screen/home_screen.dart';
import 'package:valuemissaccoapi/screen/login/login_page.dart';
// import 'package:valuemissaccoapi/screen/login/login_page.dart';
// import 'screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sacco Member Portal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.indigo),
      home: LoginPage(),
    );
  }
}



// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sacco Member Portal',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primaryColor: Colors.indigo),
//       home: HomeScreen(),
//     );
//   }
// }
