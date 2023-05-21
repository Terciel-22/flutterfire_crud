import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_crud/services/auth.service.dart';

class UserReady extends StatelessWidget {
  const UserReady({super.key, required this.builder});

  final Widget Function(User?) builder;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().stream(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox.shrink();
        }

        return builder(snapshot.data);
      },
    );
  }
}
