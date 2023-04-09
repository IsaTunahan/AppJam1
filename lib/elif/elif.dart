import 'package:flutter/material.dart';

class Elif extends StatefulWidget {
  const Elif({super.key});

  @override
  State<Elif> createState() => _ElifState();
}

class _ElifState extends State<Elif> {
  //late GoogleMapController mapController;
  //final LatLng _center = const LatLng(37.7749, -122.4194);
  int kisi_sayisi = 0;
  bool isButtonClikable = true;
  bool isButtonClikable1 = false;

  void ButtonFunction() {
    setState(() {
      isButtonClikable = false;
    });
  }

  void ButtonFunction1() {
    setState(() {
      isButtonClikable1 = true;
    });
  }

  void kisi_increase() {
    setState(() {
      kisi_sayisi++;
    });
  }

  void kisi_decrease() {
    setState(() {
      kisi_sayisi--;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Color.fromARGB(233, 245, 237, 237),
        drawer: Drawer(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255)),
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
              child: Center(
                child: Text(
                  "ETKİNLİK İSMİ",
                  textScaleFactor: 1.5,
                ),
              ),
              //Etkinlik ismi yazılacak
            ),
            const SizedBox(
              height: 50,
              width: 50,
              child: Center(
                child: Text(
                  "ETKİNLİK AÇIKLAMASI",
                  textScaleFactor: 1.5,
                ),
              ),
              //etkinlik açıklaması yazılacak
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: Container(
                child: Center(
                    child: Text(
                  "etkinlik ayrıntıları",
                  style: TextStyle(fontSize: 30),
                )),
                //ETKİNLİK AYRINTILARI YAZILACAK
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: Container(
                child: Center(
                  child:
                      Text("$kisi_sayisi kişi katılıyor!", textScaleFactor: 2),
                ),

                //KAÇ KİŞİNİN GELECEĞİ YAZACAK
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
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
              child: Opacity(
                opacity: isButtonClikable ? 1.0 : 0.5,
                child: ElevatedButton(
                  onPressed: () {
                    if (isButtonClikable) {
                      kisi_increase();
                      ButtonFunction();
                    }
                  },
                  // ignore: sort_child_properties_last
                  child: Text("KATIL"),

                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(60, 50),
                      textStyle: const TextStyle(
                          fontSize: 28, fontStyle: FontStyle.normal),
                      primary: Colors.lightGreen,
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: Opacity(
                opacity: isButtonClikable ? 0.0 : 1.0,
                child: ElevatedButton(
                  onPressed: () {
                    kisi_decrease();
                    isButtonClikable = true;
                  },
                  child: Text("VAZGEÇ"),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(60, 50),
                      textStyle: const TextStyle(
                          fontSize: 28, fontStyle: FontStyle.normal),
                      primary: Colors.lightGreen,
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
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
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Mesaj_sayfasi();
                }));
              },
              icon: Icon(Icons.message_outlined),
            ),
          ],
        ));

  }
}

class Mesaj_sayfasi extends StatefulWidget {
  const Mesaj_sayfasi({super.key});

  @override
  State<Mesaj_sayfasi> createState() => _Mesaj_sayfasiState();
}

class _Mesaj_sayfasiState extends State<Mesaj_sayfasi> {
  TextEditingController t1 = TextEditingController();
  List mesajlar = [];
  gonder() {
    setState(() {
      mesajlar.add(t1.text);
      t1.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(child: ListView.builder(itemCount: mesajlar.length,
          itemBuilder: (context, indexno) => Text(mesajlar[indexno]),)
          ),
          TextField(controller: t1,),
          ElevatedButton(onPressed: gonder, child: Text("gönder"))
        ],
        
        ),
        ),
       
       );
  }
}
