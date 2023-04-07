import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyIcons extends StatefulWidget {
  const MyIcons({super.key});

  @override
  State<MyIcons> createState() => _MyIconsState();
}

class _MyIconsState extends State<MyIcons> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
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
    );
  }
}
