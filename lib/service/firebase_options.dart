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
    apiKey: 'AIzaSyAoEAdHjyFHUjnrIxZ8hFmI10kSeZyw6iY',
    appId: '1:532278460713:web:859b3efb14dd570fa17738',
    messagingSenderId: '532278460713',
    projectId: 'coffe-shop-191f3',
    authDomain: 'coffe-shop-191f3.firebaseapp.com',
    storageBucket: 'coffe-shop-191f3.appspot.com',
    measurementId: 'G-KMJE7QLFDF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC4aQRtR4BpCN9XHVQHpUaFAP6BfbQBql4',
    appId: '1:532278460713:android:6ff25c1f6c95f527a17738',
    messagingSenderId: '532278460713',
    projectId: 'coffe-shop-191f3',
    storageBucket: 'coffe-shop-191f3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBDC8lEQno05w68KUTVtSiYT_sCT1PO2wQ',
    appId: '1:532278460713:ios:95d869ad0fda75e5a17738',
    messagingSenderId: '532278460713',
    projectId: 'coffe-shop-191f3',
    storageBucket: 'coffe-shop-191f3.appspot.com',
    iosBundleId: 'com.example.applicationFurnitureMobile',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBDC8lEQno05w68KUTVtSiYT_sCT1PO2wQ',
    appId: '1:532278460713:ios:95d869ad0fda75e5a17738',
    messagingSenderId: '532278460713',
    projectId: 'coffe-shop-191f3',
    storageBucket: 'coffe-shop-191f3.appspot.com',
    iosBundleId: 'com.example.applicationFurnitureMobile',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAoEAdHjyFHUjnrIxZ8hFmI10kSeZyw6iY',
    appId: '1:532278460713:web:fda78d1f1d5e4ec7a17738',
    messagingSenderId: '532278460713',
    projectId: 'coffe-shop-191f3',
    authDomain: 'coffe-shop-191f3.firebaseapp.com',
    storageBucket: 'coffe-shop-191f3.appspot.com',
    measurementId: 'G-5ZE9178HQW',
  );
}
