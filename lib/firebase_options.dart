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
    apiKey: 'AIzaSyAC0v2sNofhmwplMC61QNRhbQ8TdzlXolY',
    appId: '1:633627717122:web:1ab7dd6682a544aa0e011b',
    messagingSenderId: '633627717122',
    projectId: 'easymart-a5eff',
    authDomain: 'easymart-a5eff.firebaseapp.com',
    storageBucket: 'easymart-a5eff.appspot.com',
    measurementId: 'G-YBCG1JD25H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAZV3oftRTXQYHXnVonoGpLxljcgP5YVeU',
    appId: '1:633627717122:android:3df59035fdbf008a0e011b',
    messagingSenderId: '633627717122',
    projectId: 'easymart-a5eff',
    storageBucket: 'easymart-a5eff.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyABo8dksvc77CjiWf3sEj-28NzKfYTakrM',
    appId: '1:633627717122:ios:4a793dd53c4bcb2f0e011b',
    messagingSenderId: '633627717122',
    projectId: 'easymart-a5eff',
    storageBucket: 'easymart-a5eff.appspot.com',
    iosBundleId: 'com.example.easyMart',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyABo8dksvc77CjiWf3sEj-28NzKfYTakrM',
    appId: '1:633627717122:ios:b503d57cc6afd7100e011b',
    messagingSenderId: '633627717122',
    projectId: 'easymart-a5eff',
    storageBucket: 'easymart-a5eff.appspot.com',
    iosBundleId: 'com.example.easyMart.RunnerTests',
  );
}