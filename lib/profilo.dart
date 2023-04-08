import 'MySocialActivity.dart';
import 'edu_tab.dart';
import 'fun_tab.dart';
import 'package:flutter/material.dart' ;



class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}
class _MyProfilePageState extends State<MyProfilePage> {

  List<Widget> socialAct =[
    //Education
    my_socialact(Buttoname: 'Eğitim'),
    //Fun
    my_socialact(Buttoname: 'Etkinlik'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        //appBar
        appBar: AppBar(),

        body: Center(
          child: Column(
            children: [
              main_profilo(),


              //tab bar
              TabBar(tabs: socialAct),
              //tab bar view
              Expanded(
                child: TabBarView(
                  children: [
                    //edu page
                    eduTab(),
                    //fun page
                    funTab(),
                  ],
                ),
              ),
            ],
          ),
        ),

        //Buttom Navigator Bar
        //bottomNavigationBar: Container(color: const Color.fromARGB(255, 141, 139, 139), child: const MyIcons(),), //navigation bar iconlari
      ),
    );
  }
}

class main_profilo extends StatelessWidget {
  const main_profilo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
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
    );
  }
}