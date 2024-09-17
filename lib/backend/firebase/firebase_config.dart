import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB7h4dLZXffGda991_FSN-So6vAUXuQAAA",
            authDomain: "neo-cash-ijapmn.firebaseapp.com",
            projectId: "neo-cash-ijapmn",
            storageBucket: "neo-cash-ijapmn.appspot.com",
            messagingSenderId: "1015669625608",
            appId: "1:1015669625608:web:0fbd23eb4493fcd4dd12bd"));
  } else {
    await Firebase.initializeApp();
  }
}
