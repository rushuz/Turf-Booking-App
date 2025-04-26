// File: lib/firebase_options.dart

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, TargetPlatform, kIsWeb;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      // For web platform (if you support web)
      return webOptions;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions webOptions = FirebaseOptions(
    apiKey: "your-web-api-key",
    appId: "your-web-app-id",
    messagingSenderId: "your-web-sender-id",
    projectId: "your-firebase-project-id",
    authDomain: "your-project.firebaseapp.com",
    storageBucket: "your-project.appspot.com",
    measurementId: "G-XXXXXXX",
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: "your-android-api-key",
    appId: "your-android-app-id",
    messagingSenderId: "your-android-sender-id",
    projectId: "your-firebase-project-id",
    storageBucket: "your-project.appspot.com",
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: "your-ios-api-key",
    appId: "your-ios-app-id",
    messagingSenderId: "your-ios-sender-id",
    projectId: "your-firebase-project-id",
    storageBucket: "your-project.appspot.com",
    iosClientId: "your-ios-client-id",
    iosBundleId: "your-ios-bundle-id",
  );
}
