import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
//ignore_for_file: prefer_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 141, 139, 139),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Color.fromARGB(255, 141, 139, 139),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(255, 108, 198, 239),
            gap: 10,
            //onTabChange: (){ 'sayfadan sayfaya gitme degisikligi yapilacak yer '}

            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Ana Sayfa',
              ),
              GButton(
                icon: Icons.add_circle,
                text: 'Etkinlik Yarat',
              ),
              GButton(
                icon: Icons.supervised_user_circle,
                text: 'Profil',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
