





import 'package:wildpoly/model/user_model.dart';
import 'package:wildpoly/services/auth_base.dart';
import 'package:wildpoly/services/fake_auth_services.dart';
import 'package:wildpoly/services/firebase_auth_service.dart';
import 'package:wildpoly/services/firestore_db_service.dart';
import 'package:wildpoly/services/locator.dart';

enum AppMode { DEBUG, RELEASE }

class UserRepository implements AuthBase {
  final FirebaseAuthService _firebaseAuthService =
      locator<FirebaseAuthService>();
  final FirestoreDBService _firestoreDBService = locator<FirestoreDBService>();

  final FakeAuthenticationService _fakeAuthenticationService =
      locator<FakeAuthenticationService>();

  AppMode appMode = AppMode.RELEASE;
  @override
  Future<MyUser?> currentUser() async {
    if (appMode == AppMode.DEBUG) {
      return  _fakeAuthenticationService.currentUser();
    } else {
      final _user = await _firebaseAuthService.currentUser();
      if (_user != null) {
        return  _firestoreDBService.readUser(_user.userID!);
      }
    }
    return null;
  }
  

  @override
  Future<bool> signOut() async {
    if (appMode == AppMode.DEBUG) {
      return  _fakeAuthenticationService.signOut();
    } else {
      return  _firebaseAuthService.signOut();
    }
  }


  @override
  Future<MyUser?> signInEmailAndPassword(String email, String password) async {
    if (appMode == AppMode.DEBUG) {
      return  _fakeAuthenticationService.signInEmailAndPassword(
          email, password,);
    } else {
      return  _firebaseAuthService.signInEmailAndPassword(email, password);
    }
  }

  @override
  Future<MyUser?> signUp(
    String email,
    String password,
  ) async {
    if (appMode == AppMode.DEBUG) {
      return  _fakeAuthenticationService.signUp(
        email,
        password,
      );
    } else {
      final myUser = await _firebaseAuthService.signUp(
        email,
        password,
      );
      print('${myUser!.userID}');
      final sonuc = await _firestoreDBService.saveUser(myUser);

      if (sonuc) {
        return myUser;
      } else {
        return null;
      }
    }
  }

  Future<dynamic> createUserName(String userID, String yeniUserName) async {
    if (appMode == AppMode.DEBUG) {
      return false;
    } else {
      return  _firestoreDBService.createUserName(userID, yeniUserName);
      
    }
  }

  Future<bool> createName(String userID, String yeniName) async {
    if (appMode == AppMode.DEBUG) {
      return false;
    } else {
      return  _firestoreDBService.createName(userID, yeniName);
    }
  }

 

  Future<List<MyUser>> getAllUser() async {
    if (appMode == AppMode.DEBUG) {
      return [];
    } else {
      final tumKullaniciListesi = await _firestoreDBService.getAllUser();
      return tumKullaniciListesi;
    }
  }




  
  @override
 Future<dynamic> sendPasswordResetEmail(String email)async {
     if (appMode == AppMode.DEBUG) {
      return true;
    } else {
      return  _firebaseAuthService.sendPasswordResetEmail(email);
    }
  }
}
