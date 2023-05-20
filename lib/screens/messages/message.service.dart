import "package:firebase_auth/firebase_auth.dart";
import "package:firebase_database/firebase_database.dart";
import "package:flutter/material.dart";
import "package:flutterfire_crud/etc/definitions.dart";
import 'package:flutterfire_crud/models/message.model.dart';

class MessageService extends ChangeNotifier {
  DatabaseReference ref = FirebaseDatabase.instance.ref();
  User? user = FirebaseAuth.instance.currentUser;

  Stream<List<Message>> fetchMessages() {
    return ref.child('users/${user!.uid}/messages').onValue.map((event) {
      final messages = event.snapshot.value as Json;
      return messages.entries.map((entry) => Message.fromJson(entry)).toList();
    });
  }

  Future<void> createMessage(Message message) async {
    ref.push().set(message.toJson());
  }

  Future<void> updateMessage(String messageId, Message message) async {
    await ref
        .child('users/${user!.uid}/messages')
        .child(messageId)
        .update(message.toJson());
  }

  Future<void> deleteMessage(String messageId) async {
    await ref.child('users/${user!.uid}/messages').child(messageId).remove();
  }
}
