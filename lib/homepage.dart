import 'package:app_jam/create_from.dart';
import 'package:app_jam/square.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'bottomNavigationBar/icons.dart';
import 'package:app_jam/bottomNavigationBar/bottom_navigation_controller.dart';
import 'colors.dart';
import 'package:get/get.dart';

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
        backgroundColor: AppColors.blue,
        title: const Text('Etkinlikler'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 668, // ????
            child: SizedBox(
              height: 500,
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
    );
  }
}
