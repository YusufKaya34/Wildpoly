import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wildpoly/model/user_model.dart';
import 'package:wildpoly/services/database.dart';

class FirestoreDBService implements DB {
  final FirebaseFirestore _firebaseDB = FirebaseFirestore.instance;

  @override
  Future<bool> saveUser(MyUser user) async {
    final DocumentSnapshot _okunanUser =
        await FirebaseFirestore.instance.doc('users/${user.userID}').get();

    if (_okunanUser.data() == null) {
      await _firebaseDB.collection('users').doc(user.userID).set(user.toMap());
      return true;
    } else {
      return true;
    }
  }

  @override
  Future<MyUser> readUser(String userID) async {
    final DocumentSnapshot _okunanUser =
        await _firebaseDB.collection('users').doc(userID).get();

    final _okunanUserNesnesi =
        MyUser.fromMap(_okunanUser.data() as Map<String, String>);
    return _okunanUserNesnesi;
  }

  Future<bool> createUserName(String userID, String yeniUserName) async {
    final users = await _firebaseDB
        .collection('users')
        .where('username', isEqualTo: yeniUserName)
        .get();
    if (users.docs.isNotEmpty) {
      return false;
    } else {
      await _firebaseDB
          .collection('users')
          .doc(userID)
          .update({'username': yeniUserName});
      return true;
    }
  }

  Future<bool> createName(String userID, String yeniName) async {
    final users = await _firebaseDB
        .collection('users')
        .where('name', isEqualTo: yeniName)
        .get();
    if (users.docs.isNotEmpty) {
      return false;
    } else {
      await _firebaseDB
          .collection('users')
          .doc(userID)
          .update({'name': yeniName});
      return true;
    }
  }

  @override
  Future<List<MyUser>> getAllUser() async {
    final QuerySnapshot querySnapshot = await _firebaseDB
        .collection('users')
        .orderBy('createdAt', descending: true)
        .get();
    var tumKullanicilar = <MyUser>[];
    tumKullanicilar = querySnapshot.docs
        .map((e) => MyUser.fromMap(e.data() as Map<String, String>))
        .toList();
    return tumKullanicilar;
  }
}
