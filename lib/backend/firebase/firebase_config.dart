import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDLZecuStEBnrNfGeeWu2k99CGjfiRUIUQ",
            authDomain: "clone1-3bcac.firebaseapp.com",
            projectId: "clone1-3bcac",
            storageBucket: "clone1-3bcac.appspot.com",
            messagingSenderId: "728760158680",
            appId: "1:728760158680:web:b9ff44fc2f149b9d6ccaad"));
  } else {
    await Firebase.initializeApp();
  }
}
