import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rove/screens/homeScreen.dart';
import 'package:rove/screens/loginPage.dart';
import 'package:rove/screens/onBoardingPage1.dart';
import 'package:rove/screens/onBoardingPage2.dart';
import 'package:rove/screens/onBoardingPage3.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance
            .authStateChanges(), //continuously listening the state changes
        builder: (context, snapshot) {
          //user logged in
          if (snapshot.hasData) {
            return HomeScreen();
          }
          //not logged in
          else {
            return BoardingPage1(); //
          }
        },
      ),
    );
  }
}