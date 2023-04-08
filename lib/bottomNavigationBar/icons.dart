import 'package:app_jam/bottomNavigationBar/bottom_navigation_controller.dart';
import 'package:app_jam/create_from.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../colors.dart';
import '../homepage.dart';

class MyIcons extends StatelessWidget {
  MyIcons({super.key});

  BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: bottomNavigationController.selectedIndex.value,
          children: [
            HomePage(),
            CreateFrom(),
            HomePage(), //profil sayfasi gelecek
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: AppColors.blue,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: GNav(
              //onTabChange: (){ 'sayfadan sayfaya gitme degisikligi yapilacak yer '}
              padding: EdgeInsets.all(16),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Ana Sayfa',
                ),
                GButton(
                  icon: Icons.add_circle,
                  text: 'Etkinlik Yarat',
                ),
                GButton(
                  icon: Icons.supervised_user_circle,
                  text: 'Profil',
                ),
              ],
              backgroundColor: AppColors.blue,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: AppColors.green,
              haptic: true,
              gap: 10,
              onTabChange: (value) {
                bottomNavigationController.changeIndex(value);
              },
            ),
          ),
        ), //navigation bar iconlari
      ),
    );
  }
}
