import 'package:flutter/material.dart';
import 'package:flutterfire_crud/auth/login/login.screen.dart';
import 'package:flutterfire_crud/auth/signup/signup.screen.dart';
import 'package:flutterfire_crud/screens/home/home.screen.dart';
import 'package:flutterfire_crud/screens/messages/messages.screen.dart';
import 'package:flutterfire_crud/screens/profile/profile.screen.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// Flutterfire default initialization
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

final GoRouter _router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const LoginScreen()),
  GoRoute(
    path: '/sign-up',
    builder: (context, state) => const SignUpScreen(),
  ),
  GoRoute(
    path: '/home',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/profile',
    builder: (context, state) => const ProfileScreen(),
  ),
  GoRoute(
    path: '/messages',
    builder: (context, state) => const MessagesScreen(),
  ),
]);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(brightness: Brightness.light),
    );
  }
}
