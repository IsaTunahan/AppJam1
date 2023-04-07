import 'package:app_jam/square.dart';
import 'package:flutter/material.dart';
import 'icons.dart';

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
        child: const MyIcons(), //navigation bar iconlari
      ),
    );
  }
}
