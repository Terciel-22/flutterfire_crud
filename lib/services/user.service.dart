import 'package:firebase_auth/firebase_auth.dart';

class UserService {
  static UserService? _instance;
  static UserService get instance => _instance ??= UserService();

  UserService();

  signOut() {
    FirebaseAuth.instance.signOut();
  }
}
