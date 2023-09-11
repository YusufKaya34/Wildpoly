import 'dart:io';
import 'dart:ui';


import 'package:device_info_plus/device_info_plus.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class OneSignalApi {
  
  static Future<dynamic> setupOneSignal() async {
    Future<String?> _getId() async {
      final deviceInfo = DeviceInfoPlugin();
      if (Platform.isIOS) {
         final iosDeviceInfo = await deviceInfo.iosInfo;
        return iosDeviceInfo.identifierForVendor; 
      } else if (Platform.isAndroid) {
        final androidDeviceInfo = await deviceInfo.androidInfo;
        return androidDeviceInfo.androidId; 
      }
      return null;
    }
    final deviceID = await _getId();

    
    final deviceLang = PlatformDispatcher.instance.locale.languageCode;

    final oneSignal = OneSignal.shared;
    await oneSignal.promptUserForPushNotificationPermission();
    await oneSignal.setAppId('d65d8e7a-d196-4c6e-9732-f325092f5556');
      await oneSignal.setExternalUserId(deviceID!);
    await oneSignal.setLanguage(deviceLang);
    await oneSignal.sendTags({
        'deviceID': deviceID,
      'deviceLang': deviceLang,
    });
    oneSignal.setNotificationOpenedHandler((openedResult) {
      final data = openedResult.notification.additionalData as String?;
      if (data != null) {}
    });
  }
}
