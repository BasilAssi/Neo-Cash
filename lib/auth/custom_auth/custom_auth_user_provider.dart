import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class NeoCashAuthUser {
  NeoCashAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<NeoCashAuthUser> neoCashAuthUserSubject =
    BehaviorSubject.seeded(NeoCashAuthUser(loggedIn: false));
Stream<NeoCashAuthUser> neoCashAuthUserStream() => neoCashAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
