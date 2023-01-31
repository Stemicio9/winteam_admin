

import 'package:firebase_core/firebase_core.dart';
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
      return firebaseConfig;
    }else {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
            'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }

  }

  static const firebaseConfig = FirebaseOptions(
      apiKey: "AIzaSyDTnPfY62D_QMa6LQ6KNUy3mhhW6DUb0vw",
      authDomain: "workonenight-team.firebaseapp.com",
      projectId: "workonenight-team",
      storageBucket: "workonenight-team.appspot.com",
      messagingSenderId: "742120781382",
      appId: "1:742120781382:web:f84b31c3cd4400d8477c47",
      measurementId: "G-5FZDW64NPJ"
  );
}
