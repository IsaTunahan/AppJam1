import 'package:app_jam/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),

                //Logo
                Image.asset(
                  'lib/images/logo.ico',
                  height: 150,
                ),
                //Giriş yap yazısı
                Text(
                  'Giriş Yap',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                    fontSize: 50,
                    color: AppColors.blue,
                    fontWeight: FontWeight.bold
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
