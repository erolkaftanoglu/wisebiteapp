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
    apiKey: 'AIzaSyANzQe_uN_z-_rkDMFbFJ7sp0zldT_sSCA',
    appId: '1:986251975502:web:400e2fe9eb1b5d16185c1f',
    messagingSenderId: '986251975502',
    projectId: 'wise-bite-app',
    authDomain: 'wise-bite-app.firebaseapp.com',
    storageBucket: 'wise-bite-app.appspot.com',
    measurementId: 'G-2Q080VS5BM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAcm-94tgwWAEpD7JX-G5wgB_g70HGFCWw',
    appId: '1:986251975502:android:ecb20c5bcbc85e7c185c1f',
    messagingSenderId: '986251975502',
    projectId: 'wise-bite-app',
    storageBucket: 'wise-bite-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBmWBKuJH8LeYjGkAC3bLws5lh0I9dSKc8',
    appId: '1:986251975502:ios:76eb8038067503c5185c1f',
    messagingSenderId: '986251975502',
    projectId: 'wise-bite-app',
    storageBucket: 'wise-bite-app.appspot.com',
    iosBundleId: 'com.example.erolkaftanoglublog',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBmWBKuJH8LeYjGkAC3bLws5lh0I9dSKc8',
    appId: '1:986251975502:ios:56cd0fc0614414dd185c1f',
    messagingSenderId: '986251975502',
    projectId: 'wise-bite-app',
    storageBucket: 'wise-bite-app.appspot.com',
    iosBundleId: 'com.example.erolkaftanoglublog.RunnerTests',
  );
}
