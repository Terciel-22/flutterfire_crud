import 'package:flutterfire_crud/etc/definitions.dart';

class Message {
  final String id;
  final String sender;
  final String receiver;
  final String contact;
  final String content;
  final DateTime timestamp;

  Message(
      {required this.id,
      required this.sender,
      required this.receiver,
      required this.contact,
      required this.content,
      required this.timestamp});

  factory Message.fromJson(JsonEntry json) {
    return Message(
      id: json.key,
      sender: json.value["sender"],
      receiver: json.value["receiver"],
      contact: json.value["contact"],
      content: json.value["content"],
      timestamp: DateTime.parse(json.value["timestamp"]),
    );
  }

  Json toJson() {
    return {
      "id": id,
      "sender": sender,
      "receiver": receiver,
      "contact": contact,
      "content": content,
      "timestamp": timestamp.toString(),
    };
  }
}
