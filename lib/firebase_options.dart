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
    apiKey: 'AIzaSyD80wq2mDC5St3VhYkxg0192f7RXTpK7PM',
    appId: '1:965156884352:web:c7d2bf2c96e4a6fa7f3b65',
    messagingSenderId: '965156884352',
    projectId: 'flutterbg1',
    authDomain: 'flutterbg1.firebaseapp.com',
    storageBucket: 'flutterbg1.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCReTJcn2l-0KRA-tk8EDfxurI1PsG4OIc',
    appId: '1:965156884352:android:35ad31d6f20f1a6c7f3b65',
    messagingSenderId: '965156884352',
    projectId: 'flutterbg1',
    storageBucket: 'flutterbg1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC2-0ut8hqMDSXrn_Anje8r7Y9PR0YAnkQ',
    appId: '1:965156884352:ios:39a19a5902eba2c77f3b65',
    messagingSenderId: '965156884352',
    projectId: 'flutterbg1',
    storageBucket: 'flutterbg1.appspot.com',
    iosClientId: '965156884352-gbvtiq4k3h1pkjh2rs9stq81sonc4esg.apps.googleusercontent.com',
    iosBundleId: 'io.ifonix.myfirstapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC2-0ut8hqMDSXrn_Anje8r7Y9PR0YAnkQ',
    appId: '1:965156884352:ios:4962919caa200b667f3b65',
    messagingSenderId: '965156884352',
    projectId: 'flutterbg1',
    storageBucket: 'flutterbg1.appspot.com',
    iosClientId: '965156884352-mtei58l9tu2q4avmi9g2j7iu8105nkjp.apps.googleusercontent.com',
    iosBundleId: 'io.ifonix.myfirstapp.RunnerTests',
  );
}
