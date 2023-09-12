// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> en_US = {
    "login": {
      "email": "E-mail",
      "mobileNum": "Mobile Number",
      "fullName": "Full Name",
      "byRegister": "By registering, you accept our",
      "termsOf": "Terms of Conditions",
      "pickPhone": "Enter a Phone Number",
      "alreadyHaveAc": "Do you have an account?",
      "password": "Password",
      "login": "Login",
      "register": "Register",
      "orLogin": "Or Login with",
      "dontHaveAc": "Don't have an account",
      "forgotPass": "Forgot Your Password?"
    }
  };
  static const Map<String, dynamic> tr_TR = {
    "login": {
      "email": "E-posta",
      "mobileNum": "Cep Telefonu",
      "fullName": "Ad Soyad",
      "byRegister": "Üye olmakla,",
      "termsOf": "Kullanım Koşulları",
      "pickPhone": "Bir Cep Telefonu girin",
      "alreadyHaveAc": "Zaten bir hesabınız var mı?",
      "password": "Şifre",
      "login": "Giriş Yap",
      "register": "Kayıt Ol",
      "orLogin": "Veya",
      "dontHaveAc": "Hesabınız yok mu?",
      "forgotPass": "Şifreni mi unuttun?"
    }
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "en_US": en_US,
    "tr_TR": tr_TR
  };
}
