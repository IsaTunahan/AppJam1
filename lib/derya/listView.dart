import 'package:app_jam/derya/bottomNavigationBar/listView_Shape.dart';
import 'package:flutter/material.dart';
import 'bottomNavigationBar/colors.dart';

class ListViewPage extends StatelessWidget {
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
                  return MyShape(
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
