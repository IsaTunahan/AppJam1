import 'package:app_jam/colors.dart';
import 'package:app_jam/pages/home_page.dart';
import 'package:app_jam/widgetlar/_google_giris.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_jam/widgetlar/_textfield.dart';

import '../widgetlar/_button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  signInUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),

                //Logo
                Image.asset(
                  'lib/images/logo.ico',
                  height: 150,
                ),

                const SizedBox(
                  height: 20,
                ),
                //Giriş yap yazısı
                const Text(
                  'Giriş Yap',
                  style: TextStyle(
                      fontSize: 50,
                      color: AppColors.blue,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                //email
                AppTextField(
                    controller: emailcontroller,
                    hintText: 'Email',
                    obscureText: false),
                const SizedBox(
                  height: 15,
                ),
                //password
                AppTextField(
                    controller: passwordcontroller,
                    hintText: 'Password',
                    obscureText: true),

                const SizedBox(
                  height: 15,
                ),

                // Şifrenizi mi unuttunuz?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Şifrenizi mi unuttunuz?',
                        style: TextStyle(
                            color: AppColors.blue, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),

                //Giriş Yap Butonu
                const SizedBox(
                  height: 15,
                ),
                GirisButton(
                  onTap: signInUser(),
                ),
                const SizedBox(
                  height: 30,
                ),

                // Ya da texti
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[600],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Ya da',
                          style: TextStyle(color: Colors.grey[800]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                //google ile devam et
                const GoogleGiris(
                  imagePath: 'lib/images/google.png',
                ),

                const SizedBox(
                  height: 25,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hesabın yok mu?',
                      style: TextStyle(color: Colors.grey[700],
                      fontSize: 18),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      child: const Text(
                        'Kayıt ol.',
                        style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
