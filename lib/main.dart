
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    drawer:  Drawer(child: Column(mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 100,
           child: ElevatedButton(
             
             style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 255, 255, 255)),
             onPressed: () {},
             child: Center(
               child: Text("Kullanıcıyı Engelle",
               style:TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),
               ),
             ),
           ),
           
         ),
      ],
    )),
        body: ListView(
          children: [SizedBox(
            height: 80,
            width: 80,
            child: Text("ETKİNLİK İSMİ",
            textScaleFactor: 1.5,),
            //Etkinlik ismi yazılacak
          ),
            SizedBox(
              height: 50,
              width: 50,
              child: Text("ETKİNLİK AÇIKLAMASI",
              textScaleFactor: 1.5,),
            //etkinlik açıklaması yazılacak
          ),
            Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      child: Container(
        //ETKİNLİK AYRINTILARI YAZILACAK
        height: 200,
        decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(20)),
        
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      child: Container(
        //KAÇ KİŞİNİN GELECEĞİ YAZACAK
        height: 80,
        decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(20)),
        
      ),
    )
            
          ],
        ),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 96, 203, 238),
          title: Center(
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
