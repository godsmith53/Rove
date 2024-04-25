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
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            });
          } else {
            WidgetsBinding.instance!.addPostFrameCallback((_) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => BoardingPage1()),
              );
            });
          }
        }
        return CircularProgressIndicator(); // Show a loading spinner while waiting for the auth state to change
      },
    ));
  }
}
