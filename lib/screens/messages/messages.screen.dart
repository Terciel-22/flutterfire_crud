import 'package:flutter/material.dart';
import 'package:flutterfire_crud/widgets/bottom.navigation.bar.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Messages'),
        ),
      ),
      body: const Center(
        child: Text('Messages'),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(currentIndex: 2),
    );
  }
}
