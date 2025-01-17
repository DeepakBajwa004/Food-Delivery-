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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyCjTh0MMrsYiWlKDN74cdIvrA9EZZy7hzo',
    appId: '1:146790446918:web:390a8af8c24e0802329747',
    messagingSenderId: '146790446918',
    projectId: 'quickfoodie-f027f',
    authDomain: 'quickfoodie-f027f.firebaseapp.com',
    storageBucket: 'quickfoodie-f027f.appspot.com',
    measurementId: 'G-YF86VNZYFW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDUs6ESUvMT3jYlL3dkvT2FX_etQsEqLY0',
    appId: '1:146790446918:android:f4325651a795be90329747',
    messagingSenderId: '146790446918',
    projectId: 'quickfoodie-f027f',
    storageBucket: 'quickfoodie-f027f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBVY8AZ4aFSekFvc6t9DtUGfCY16haLtBA',
    appId: '1:146790446918:ios:b486f021458581a7329747',
    messagingSenderId: '146790446918',
    projectId: 'quickfoodie-f027f',
    storageBucket: 'quickfoodie-f027f.appspot.com',
    iosBundleId: 'com.example.foodDelivery',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBVY8AZ4aFSekFvc6t9DtUGfCY16haLtBA',
    appId: '1:146790446918:ios:b486f021458581a7329747',
    messagingSenderId: '146790446918',
    projectId: 'quickfoodie-f027f',
    storageBucket: 'quickfoodie-f027f.appspot.com',
    iosBundleId: 'com.example.foodDelivery',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCjTh0MMrsYiWlKDN74cdIvrA9EZZy7hzo',
    appId: '1:146790446918:web:c552e9727c0ccbbc329747',
    messagingSenderId: '146790446918',
    projectId: 'quickfoodie-f027f',
    authDomain: 'quickfoodie-f027f.firebaseapp.com',
    storageBucket: 'quickfoodie-f027f.appspot.com',
    measurementId: 'G-ZJR3PYL7XF',
  );
}
