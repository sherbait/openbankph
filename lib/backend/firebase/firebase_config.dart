import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDCQ6hnIKB1En2zaMGqy4fQ7YXhhwNmsVI",
            authDomain: "openbankph.firebaseapp.com",
            projectId: "openbankph",
            storageBucket: "openbankph.appspot.com",
            messagingSenderId: "963776335493",
            appId: "1:963776335493:web:30f50f5e65a12b0d66e3ec",
            measurementId: "G-NMVW8P0Z87"));
  } else {
    await Firebase.initializeApp();
  }
}
