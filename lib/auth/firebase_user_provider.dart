import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class WejeTeleHealthFirebaseUser {
  WejeTeleHealthFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

WejeTeleHealthFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<WejeTeleHealthFirebaseUser> wejeTeleHealthFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<WejeTeleHealthFirebaseUser>(
      (user) {
        currentUser = WejeTeleHealthFirebaseUser(user);
        return currentUser!;
      },
    );
