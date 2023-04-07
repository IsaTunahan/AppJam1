import 'package:app_jam/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_jam/widgetlar/_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

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
                  height: 50,
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
                        style: TextStyle(color:AppColors.blue, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
