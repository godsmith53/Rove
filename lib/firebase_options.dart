// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCdeLsx2yMqocseegx1wheaYKr4icmx-Og',
    appId: '1:1057954899261:web:023b98013c4df9f40d9154',
    messagingSenderId: '1057954899261',
    projectId: 'rove-28209',
    authDomain: 'rove-28209.firebaseapp.com',
    storageBucket: 'rove-28209.appspot.com',
    measurementId: 'G-DV100KEZPQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCRyG317eIR-E270C3LG5D8fUKdUKeIJQQ',
    appId: '1:1057954899261:android:d480089d7f24acc50d9154',
    messagingSenderId: '1057954899261',
    projectId: 'rove-28209',
    storageBucket: 'rove-28209.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCsJ7mxyDm1SSCGl8YrygZ3qZraa6qz6Bs',
    appId: '1:1057954899261:ios:beb27a4d8a102cba0d9154',
    messagingSenderId: '1057954899261',
    projectId: 'rove-28209',
    storageBucket: 'rove-28209.appspot.com',
    iosBundleId: 'com.priyanshukumar.rove',
  );
}
