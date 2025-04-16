import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'adjump_method_channel.dart';

abstract class AdjumpPlatform extends PlatformInterface {
  AdjumpPlatform() : super(token: _token);

  static final Object _token = Object();

  static AdjumpPlatform _instance = MethodChannelAdjump();

  static AdjumpPlatform get instance => _instance;

  static set instance(AdjumpPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> initSDK(
    String accountId,
    String appId,
    String userId,
  ) =>
      throw UnimplementedError(
        'initSDK() has not been implemented.',
      );

  Future<void> showOfferwall() => throw UnimplementedError(
        'showOfferwall() has not been implemented.',
      );
}
