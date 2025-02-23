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
    apiKey: 'AIzaSyDRyyXSBtwnpyo6hwHRCYNSG5T8fsON-Iw',
    appId: '1:909103563376:web:303d2f82f9145f3df12ab5',
    messagingSenderId: '909103563376',
    projectId: 'abiding-aspect-349313',
    authDomain: 'abiding-aspect-349313.firebaseapp.com',
    storageBucket: 'abiding-aspect-349313.firebasestorage.app',
    measurementId: 'G-34LLWNRXGB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDiIi7jQq2zdeJ8tWpow38hZfqswl6sz2M',
    appId: '1:909103563376:android:346601706b3c493ff12ab5',
    messagingSenderId: '909103563376',
    projectId: 'abiding-aspect-349313',
    storageBucket: 'abiding-aspect-349313.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDttE3A3ncaQEAxnWQnspFyjUUXWjoEUfQ',
    appId: '1:909103563376:ios:e0ad2b820cc472b1f12ab5',
    messagingSenderId: '909103563376',
    projectId: 'abiding-aspect-349313',
    storageBucket: 'abiding-aspect-349313.firebasestorage.app',
    iosBundleId: 'com.example.freshCart',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDttE3A3ncaQEAxnWQnspFyjUUXWjoEUfQ',
    appId: '1:909103563376:ios:e0ad2b820cc472b1f12ab5',
    messagingSenderId: '909103563376',
    projectId: 'abiding-aspect-349313',
    storageBucket: 'abiding-aspect-349313.firebasestorage.app',
    iosBundleId: 'com.example.freshCart',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDRyyXSBtwnpyo6hwHRCYNSG5T8fsON-Iw',
    appId: '1:909103563376:web:46aa606c7e376cc8f12ab5',
    messagingSenderId: '909103563376',
    projectId: 'abiding-aspect-349313',
    authDomain: 'abiding-aspect-349313.firebaseapp.com',
    storageBucket: 'abiding-aspect-349313.firebasestorage.app',
    measurementId: 'G-6XB276YX6D',
  );
}
