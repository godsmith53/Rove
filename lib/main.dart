import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rove/customs/theme.dart';
import 'package:rove/firebase_options.dart';
import 'package:rove/screens/loginScreen.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
   Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TTextTheme.lightTextTheme,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Rove, Travel Made Easy',
      home: const LoginPage(),
    );
  }
}
