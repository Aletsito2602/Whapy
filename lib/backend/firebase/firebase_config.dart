import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCI-0L0uIdlM-MDxOdjswQckR_j2grbEyw",
            authDomain: "whapy-1f271.firebaseapp.com",
            projectId: "whapy-1f271",
            storageBucket: "whapy-1f271.appspot.com",
            messagingSenderId: "279824054142",
            appId: "1:279824054142:web:8f32ec6d1b4e5edf94652f",
            measurementId: "G-VFVKRHDER7"));
  } else {
    await Firebase.initializeApp();
  }
}
