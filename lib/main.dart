import 'package:app_jam/gmaps.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //late GoogleMapController mapController;
  //final LatLng _center = const LatLng(37.7749, -122.4194);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255)),
                onPressed: () {},
                child: const Center(
                  child: Text(
                    "Kullanıcıyı Engelle",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        )),
        body: ListView(
          children: [
            const SizedBox(
              height: 80,
              width: 80,
              child: Text(
                "ETKİNLİK İSMİ",
                textScaleFactor: 1.5,
              ),
              //Etkinlik ismi yazılacak
            ),
            ElevatedButton(
                onPressed: () async {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return GMap();
                    },
                  ));
                },
                child: Text("harita")),
            const SizedBox(
              height: 50,
              width: 50,
              child: Text(
                "ETKİNLİK AÇIKLAMASI",
                textScaleFactor: 1.5,
              ),
              //etkinlik açıklaması yazılacak
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: Container(
                //ETKİNLİK AYRINTILARI YAZILACAK
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: Container(
                //KAÇ KİŞİNİN GELECEĞİ YAZACAK
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Container(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: Container(
                //DAVET EDEN KİŞİNİN PROFİLİ
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Etkinliğe Katıl"),
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(60, 50),
                    textStyle: const TextStyle(
                        fontSize: 28, fontStyle: FontStyle.normal),
                    primary: Colors.lightGreen,
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            )
          ],
        ),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 96, 203, 238),
          title: const Center(
              child: Text(
            "Etkinlik Detay",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
          )),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.message_outlined),
            ),
          ],
        ));
  }
}
