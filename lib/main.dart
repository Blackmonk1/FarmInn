import 'package:flutter/material.dart';
import 'package:fooddelivery/screen/login.dart';
import 'package:google_fonts/google_fonts.dart'; 

import 'constants.dart';

void main() {
  runApp(const MyApp());
}
// Written by Jay
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: const Login(),
    );
  }
}
