import 'package:firebase_auth/firebase_auth.dart'; //For user authentication
import 'dart:developer';

class AuthService {
  final String? email;
  final String? password;
  final Function? goToHome;
  final Function? setEmailError;
  final Function? setPasswordError;

  AuthService(
      {this.email,
      this.password,
      this.goToHome,
      this.setEmailError,
      this.setPasswordError});

  login() async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);
      log(credential.user.toString());
      goToHome!();
    } on FirebaseAuthException catch (e) {
      resetErrorMessages();
      if (e.code == 'user-not-found') {
        setEmailError!('No user found for this email.');
      }
      if (e.code == 'invalid-email') {
        setEmailError!('The email you provide is invalid.');
      }
      if (e.code == 'wrong-password') {
        setPasswordError!('The password does not match to this email');
      }
      if (e.code == 'user-disabled') {
        setEmailError!('User account is disabled');
      }
      if (e.code == 'unknown') {
        log(e.code);
        log(e.message.toString());
      }
    } catch (e) {
      log(e.toString());
    }
  }

  register() async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email!, password: password!);
      // ignore: avoid_print
      log(credential.user.toString());
      goToHome!();
    } on FirebaseAuthException catch (e) {
      resetErrorMessages();
      if (e.code == 'email-already-in-use') {
        setEmailError!('Email already exist.');
      }
      if (e.code == 'invalid-email') {
        setEmailError!('The email you provide is invalid.');
      }
      if (e.code == 'weak-password') {
        setPasswordError!('The password is weak.');
      }
      if (e.code == 'operation-not-allowed') {
        setEmailError!('The user/password is not enabled.');
      }
      if (e.code == 'unknown') {
        log(e.code);
        log(e.message.toString());
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Stream stream() {
    return FirebaseAuth.instance.authStateChanges();
  }

  signout() async {
    await FirebaseAuth.instance.signOut();
  }

  resetErrorMessages() {
    setEmailError!('');
    setPasswordError!('');
  }

  getUserID() {
    return FirebaseAuth.instance.currentUser!.uid;
  }
}
