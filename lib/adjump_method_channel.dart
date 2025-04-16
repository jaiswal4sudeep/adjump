import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'adjump_platform_interface.dart';

class MethodChannelAdjump extends AdjumpPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('adjump');

  @override
  Future<void> initSDK(String accountId, String appId, String userId) async {
    try {
      await methodChannel.invokeMethod('initSDK', {
        'accountId': accountId,
        'appId': appId,
        'userId': userId,
      });
    } on PlatformException catch (e) {
      log('Failed to initialize SDK: \'${e.message}\'.');
    }
  }

  @override
  Future<void> showOfferwall() async {
    try {
      await methodChannel.invokeMethod('showOfferwall');
    } on PlatformException catch (e) {
      log('Failed to show offerwall: \'${e.message}]\'.');
    }
  }
}
