import 'package:flutter/material.dart';
import 'package:flutterfire_crud/models/message.model.dart';
import 'package:flutterfire_crud/screens/messages/message.service.dart';
import 'package:flutterfire_crud/widgets/bottom.navigation.bar.dart';
import 'package:provider/provider.dart';

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
      body: const MessageList(),
      bottomNavigationBar: const CustomBottomNavigationBar(currentIndex: 2),
    );
  }
}

class MessageList extends StatelessWidget {
  const MessageList({super.key});

  @override
  Widget build(BuildContext context) {
    final messagesService = Provider.of<MessageService>(context);

    return StreamBuilder<List<Message>>(
      stream: messagesService.fetchMessages(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final messages = snapshot.data;
          return ListView.builder(
            itemCount: messages!.length,
            itemBuilder: (context, index) {
              final message = messages[index];
              return ListTile(
                title: Text(message.content),
                onLongPress: () {
                  messagesService.deleteMessage(message.id);
                },
              );
            },
          );
        } else if (snapshot.hasError) {
          return const SizedBox.shrink();
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
