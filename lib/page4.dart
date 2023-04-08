import 'package:flutter/material.dart';
import 'profilo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyProfilePage(),
      theme: ThemeData(
        //textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme,),
        primarySwatch: Colors.blue,
      ),
    );
  }
}

