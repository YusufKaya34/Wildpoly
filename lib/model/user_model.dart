import 'package:cloud_firestore/cloud_firestore.dart';

class MyUser {

  MyUser({
    required this.userID, required this.email, this.name,
    this.surname,
  });

  MyUser.fromMap(Map<String, String> map)
      : userID = map['userID'],
        email = map['email'],
        name = map['name'],
        surname = map['surname'],
        createdAt = (map['createdAt'] as Timestamp).toDate();
   String? userID;
  String? email;
  String? surname;
  String? name;
  DateTime? createdAt;
  Map<String, dynamic> toMap() {
    return {
      'userID': userID,
      'email': email,
      'name': name,
      'username': surname,
      'createdAt': createdAt ?? FieldValue.serverTimestamp(),
    };
  }

  @override
  String toString() {
    return 'MyUser{userID=$userID, email=$email, username=$surname,  name=$name  createdAt=$createdAt}';
  }
}
