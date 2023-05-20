import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_crud/services/user.service.dart';
import 'package:flutterfire_crud/widgets/bottom.navigation.bar.dart';
import 'package:flutterfire_crud/widgets/user.ready.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return UserReady(builder: (user) {
      if (user != null) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: const Center(
                child: Text('Home'),
              ),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(user.displayName ?? ''),
                  ElevatedButton(
                      onPressed: () {
                        UserService.instance.signOut();
                      },
                      child: const Text('Logout')),
                ],
              ),
            ),
            bottomNavigationBar: const CustomBottomNavigationBar(
              currentIndex: 0,
            ),
          ),
        );
      } else {
        return Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text("Home"),
            ),
          ),
          body: Center(
            child: RichText(
              text: TextSpan(
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                children: [
                  const TextSpan(text: "Please login first "),
                  TextSpan(
                      text: "here.",
                      style: TextStyle(color: Colors.red.shade600),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.go('/');
                        }),
                ],
              ),
            ),
          ),
        );
      }
    });
  }
}
