import 'package:flutter/material.dart';
import 'package:flutterdemo/screens/homepage.dart';
import 'package:flutterdemo/screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      darkTheme: ThemeData(primarySwatch: Colors.red),
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => const HomePage(),
        "/Login": ((context) => LoginPage())
      },
    );
  }
}
