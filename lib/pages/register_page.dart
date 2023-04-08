import 'package:app_jam/colors.dart';
import 'package:app_jam/widgetlar/_google_giris.dart';
import 'package:app_jam/widgetlar/kvkk.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:app_jam/widgetlar/_textfield.dart';
import '../widgetlar/_button.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;

  const RegisterPage({super.key, required this.showLoginPage});
  @override
  State<RegisterPage> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  final emailcontroller = TextEditingController();

  final passwordcontroller = TextEditingController();

//Firebase kayıt kısmı
  Future signUp() async {

    //yükleme çemberi
    showDialog(
      context: context,
      builder: (context) {
        return  const Center(child: CircularProgressIndicator());
      },
    );
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailcontroller.text.trim(),
      password: passwordcontroller.text.trim(),
    );
//yükleme çemberinin bitişi
    Navigator.of(context).pop();
  }


  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

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
                  'E-mail ile kayıt ol.',
                  style: TextStyle(
                      fontSize: 40,
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
                    hintText: 'Şifre',
                    obscureText: true),

                const SizedBox(
                  height: 15,
                ),

                Kvkk(),

                // Şifrenizi mi unuttunuz?
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: const [
                //       Text(
                //         'Şifrenizi mi unuttunuz?',
                //         style: TextStyle(
                //             color: AppColors.blue, fontWeight: FontWeight.w600),
                //       ),
                //     ],
                //   ),
                // ),

                //Giriş Yap Butonu
                const SizedBox(
                  height: 15,
                ),
                GirisButton(
                  text: 'Devam Et',
                  onTap: signUp,
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
                      'Hesabın var mı?',
                      style: TextStyle(color: Colors.grey[800], fontSize: 18),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.showLoginPage,
                      child: const Text(
                        'Giriş yap.',
                        style: TextStyle(
                            color: AppColors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
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
