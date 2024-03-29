// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return macos;
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
    apiKey: 'AIzaSyBKoJHZjZFeaC2_79p5rLqcsy_1m9DDYJ4',
    appId: '1:189449037583:web:7eaaf1d90a7b591de8807a',
    messagingSenderId: '189449037583',
    projectId: 'flutterfire-crud-b5ef5',
    authDomain: 'flutterfire-crud-b5ef5.firebaseapp.com',
    databaseURL: 'https://flutterfire-crud-b5ef5-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutterfire-crud-b5ef5.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDeabCnV8xxwFuEO86fpLwzGeFWK1UKMbE',
    appId: '1:189449037583:android:5996b91e5f827cefe8807a',
    messagingSenderId: '189449037583',
    projectId: 'flutterfire-crud-b5ef5',
    databaseURL: 'https://flutterfire-crud-b5ef5-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutterfire-crud-b5ef5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCsjTCXX1y1sdZBL4eLZRrlRbLBmkX4WYs',
    appId: '1:189449037583:ios:aed7a16eac28f003e8807a',
    messagingSenderId: '189449037583',
    projectId: 'flutterfire-crud-b5ef5',
    databaseURL: 'https://flutterfire-crud-b5ef5-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutterfire-crud-b5ef5.appspot.com',
    iosClientId: '189449037583-o824t60s4hs8i19v93qo0em1ctn4ibme.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterfireCrud',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCsjTCXX1y1sdZBL4eLZRrlRbLBmkX4WYs',
    appId: '1:189449037583:ios:aed7a16eac28f003e8807a',
    messagingSenderId: '189449037583',
    projectId: 'flutterfire-crud-b5ef5',
    databaseURL: 'https://flutterfire-crud-b5ef5-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutterfire-crud-b5ef5.appspot.com',
    iosClientId: '189449037583-o824t60s4hs8i19v93qo0em1ctn4ibme.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterfireCrud',
  );
}
