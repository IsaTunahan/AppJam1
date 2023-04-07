import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.montserratTextTheme(
        Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.blue,
      ),
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Profilo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String prof_et_eg = '';

  void checkButton(String label) {
    setState(() {
      prof_et_eg = '$label oluştur';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: CircleAvatar(
                      radius: 50, // set the size of the circle avatar
                      backgroundImage: NetworkImage('https://ca.slack-edge.com/T02LKGXV98C-U04DM47JKLY-c7cab8257d7d-512'),
                    ),
                  ),
                  Text('İsa Tunahan İslamoğlu'),
                  Text('isatunahan18@gmail.com'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      checkButton('Eğitim');
                    },
                    child: const Text(
                      'Eğitim',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      checkButton('Etkinlik');
                    },
                    child: const Text(
                      'Etkinlik',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(prof_et_eg),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
