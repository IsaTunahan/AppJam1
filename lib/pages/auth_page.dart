import 'package:app_jam/derya/bottomNavigationBar/HomePage.dart';
import 'package:app_jam/pages/login_or_register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';


class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return MyIcons();
          }

          else {
            return const LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}