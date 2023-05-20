import 'package:flutter/material.dart';
import 'package:flutterfire_crud/widgets/bottom.navigation.bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Profile'),
        ),
      ),
      body: const Center(
        child: Text('Profile'),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(currentIndex: 1),
    );
  }
}
