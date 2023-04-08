import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    ); //MaterialApp
   }
  }

  class HomePage extends StatefulWidget {
    @override
    _HomePageState createState() => _HomePageState();
  }

  class _HomePageState extends State<HomePage> {
    int _value =1;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Etkinlikler"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
              Radio(
                value: 1,
                groupValue: _value,
                onChanged: (value){
                  setState(() {
                    _value = 1;
                });
                },  
                ),
            SizedBox(
              width: 10.0,
              ),
            Text("Flutter 📱"),
          ],
          ),
          Row(
            children: [
              Radio(
                value: 2,
                groupValue: _value,
                onChanged: (value){
                  setState(() {
                    _value = 2;
                });
                },
            ),
            SizedBox(
              width: 10.0,
              ),
            Text("Unity 🎮 "),
          ],
          ),
          Row(
            children: [
              Radio(
                value: 3,
                groupValue: _value,
                onChanged: (value){
                  setState(() {
                    _value = 3;
                });
                },
            ),
            SizedBox(
              width: 10.0,
              ),
            Text("Oyun sanatı 🎨"),
          ],
          ),
          Row(
            children: [
              Radio(
                value: 4,
                groupValue: _value,
                onChanged: (value){
                  setState(() {
                    _value = 4;
                });
                },
            ),
            SizedBox(
              width: 10.0,
              ),
            Text("Proje Yönetimi 💼"),
          ],
          ),
          Row(
            children: [
              Radio(
                value: 5,
                groupValue: _value,
                onChanged: (value){
                  setState(() {
                    _value = 5;
                });
                },
            ),
            SizedBox(
              width: 10.0,
              ),
            Text("İngilizce 🇬🇧"),
          ],
          ),
          Row(
            children: [
              Radio(
                value: 6,
                groupValue: _value,
                onChanged: (value){
                  setState(() {
                    _value = 6;
                });
                },
            ),
            SizedBox(
              width: 10.0,
              ),
            Text("Teknoloji Girişimciliği ⌨️"),
          ],
          ),
          Row(
            children: [
              Radio(
                value: 7,
                groupValue: _value,
                onChanged: (value){
                  setState(() {
                    _value = 7;
                });
                },
            ),
            SizedBox(
              width: 10.0,
              ),
            Text("Yarışma Ekibi 🏆"),
          ],
          ),
          Row(
            children: [
              Radio(
                value: 8,
                groupValue: _value,
                onChanged: (value){
                  setState(() {
                    _value = 8;
                });
                },
            ),
            SizedBox(
              width: 10.0,
              ),
            Text("Vize/Final Çalışması 📕"),
          ],
          ),
          Row(
            children: [
              Radio(
                value: 9,
                groupValue: _value,
                onChanged: (value){
                  setState(() {
                    _value = 9;
                });
                },
            ),
            SizedBox(
              width: 10.0,
              ),
            Text("Kitap Okuma 📚"),
          ],
          ),
          Row(
            children: [
              Radio(
                value: 10,
                groupValue: _value,
                onChanged: (value){
                  setState(() {
                    _value = 10;
                });
                },
            ),
            SizedBox(
              width: 10.0,
              ),
            Text("Fuar/Müze Gezisi 🦾"),
          ],
          ),
          Row(
            children: [
              Radio(
                value: 11,
                groupValue: _value,
                onChanged: (value){
                  setState(() {
                    _value = 11;
                });
                },
            ),
            SizedBox(
              width: 10.0,
              ),
            Text("Kahve/Sohbet ☕"),
          ],
          ),
          Row(
            children: [
              Radio(
                value: 12,
                groupValue: _value,
                onChanged: (value){
                  setState(() {
                    _value = 12;
                });
                },
            ),
            SizedBox(
              width: 10.0,
              ),
            Text("Diğer ⭐"),
          ],
         )
          ],
        ),
      );
    }
  }