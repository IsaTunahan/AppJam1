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
          title: Text("Etkinlik Başlıkları"),
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
            Text("Flutter Çalışma"),
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
            Text("Unity Çalışma"),
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
            Text("Kahve Buluşması"),
          ],
         )
          ],
        ),
      );
    }
  }