import 'package:flutter/material.dart';
import 'package:flutterdemo/screens/homepage.dart';
import 'package:flutterdemo/screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(primarySwatch: Colors.red),
      initialRoute: "/Login",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/Login": ((context) => LoginPage())
      },
    );
  }
}
