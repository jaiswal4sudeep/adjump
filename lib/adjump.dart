import 'adjump_platform_interface.dart';

class Adjump {
  final AdjumpPlatform _platform = AdjumpPlatform.instance;

  Adjump._privateConstructor();

  static final Adjump _instance = Adjump._privateConstructor();

  static Adjump get instance => _instance;

  Future<void> initSDK({
    required String accountId,
    required String appId,
    required String userId,
  }) =>
      _platform.initSDK(accountId, appId, userId);

  Future<void> showOfferwall() => _platform.showOfferwall();
}
