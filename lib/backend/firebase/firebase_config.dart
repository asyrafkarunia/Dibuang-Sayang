import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBwsCQo-5Yu8SLRCD9RMaR4ggoaV1tTmjo",
            authDomain: "dibuang-sayang-6c726.firebaseapp.com",
            projectId: "dibuang-sayang-6c726",
            storageBucket: "dibuang-sayang-6c726.firebasestorage.app",
            messagingSenderId: "499182500759",
            appId: "1:499182500759:web:b090db95a73cc8a31be2d2",
            measurementId: "G-PM9Q6W9FSY"));
  } else {
    await Firebase.initializeApp();
  }
}
