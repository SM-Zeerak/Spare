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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD2EJMQHy62obxkckVY4uwqAnaNjivMniw',
    appId: '1:923690316681:android:72a4e5168834877749a758',
    messagingSenderId: '923690316681',
    projectId: 'spare-e5231',
    storageBucket: 'spare-e5231.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD66Gqnf2EnLB_LGZ2jGqFDZKCh-zK85xY',
    appId: '1:923690316681:ios:3db6503c6194208249a758',
    messagingSenderId: '923690316681',
    projectId: 'spare-e5231',
    storageBucket: 'spare-e5231.appspot.com',
    iosBundleId: 'com.example.donationApplication',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBD8XSm1OSCVXP8MVvk-WTSoayV4nKVt_I',
    appId: '1:923690316681:web:0cda432d519c339449a758',
    messagingSenderId: '923690316681',
    projectId: 'spare-e5231',
    authDomain: 'spare-e5231.firebaseapp.com',
    storageBucket: 'spare-e5231.appspot.com',
    measurementId: 'G-TJB2BKJXSS',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD66Gqnf2EnLB_LGZ2jGqFDZKCh-zK85xY',
    appId: '1:923690316681:ios:3db6503c6194208249a758',
    messagingSenderId: '923690316681',
    projectId: 'spare-e5231',
    storageBucket: 'spare-e5231.appspot.com',
    iosBundleId: 'com.example.donationApplication',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBD8XSm1OSCVXP8MVvk-WTSoayV4nKVt_I',
    appId: '1:923690316681:web:94984a4b225903c449a758',
    messagingSenderId: '923690316681',
    projectId: 'spare-e5231',
    authDomain: 'spare-e5231.firebaseapp.com',
    storageBucket: 'spare-e5231.appspot.com',
    measurementId: 'G-8JR91KXF0Q',
  );

}