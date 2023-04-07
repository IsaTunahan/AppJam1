import 'dart:async';
import 'package:app_jam/square.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  //const HomePage({super.key});
  final List _etkinlik = [
    //firebase kaydedilen etkinliklerden buraya getiricez!!
    'etkinlik 1',
    'etkinlik 2',
    'etkinlik 3',
    'etkinlik 4',
    'etkinlik 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 141, 139, 139),
        title: const Text('Etkinlikler'),
      ),
      body: Column(
        children: [
          Container(
            height: 668, // ????
            child: Expanded(
              child: ListView.builder(
                //RefreshIndicator sayfa  yenilemeye yariyor kullanabilirsin
                itemCount: _etkinlik.length,
                //etkinlikleri olusturdugumuz firebase den cekicez
                itemBuilder: (context, index) {
                  return MySquare(
                    child: _etkinlik[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
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
