import 'package:flutterfire_crud/etc/definitions.dart';

class User {
  final String uid;
  final String email;
  final String displayName;
  final String phoneNumber;
  final String photoURL;

  User(
      {required this.uid,
      required this.email,
      required this.displayName,
      required this.phoneNumber,
      required this.photoURL});

  factory User.fromJson(JsonEntry json) {
    return User(
        uid: json.value["uid"],
        email: json.value["email"],
        displayName: json.value["displayName"],
        phoneNumber: json.value["phoneNumber"],
        photoURL: json.value["photoURL"]);
  }

  Json toJson() {
    return {
      "uid": uid,
      "email": email,
      "displayName": displayName,
      "phoneNumber": phoneNumber,
      "photoURL": photoURL,
    };
  }
}
