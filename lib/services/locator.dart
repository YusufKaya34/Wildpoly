import 'package:get_it/get_it.dart';
import 'package:wildpoly/repository/user_repository.dart';
import 'package:wildpoly/services/fake_auth_services.dart';
import 'package:wildpoly/services/firebase_auth_service.dart';
import 'package:wildpoly/services/firestore_db_service.dart';





GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerLazySingleton(() => FirebaseAuthService());
  locator.registerLazySingleton(() => FakeAuthenticationService());
  locator.registerLazySingleton(() => UserRepository());
  locator.registerLazySingleton(() => FirestoreDBService());

}
