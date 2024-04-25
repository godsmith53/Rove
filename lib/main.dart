import 'package:flutter/material.dart';
import 'package:rove/authentication/authPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rove/screens/onBoardingPage1.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ROVE',
      home: AuthPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}