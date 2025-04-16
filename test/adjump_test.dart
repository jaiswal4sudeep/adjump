import 'package:adjump/adjump_method_channel.dart';
import 'package:adjump/adjump_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAdjumpPlatform
    with MockPlatformInterfaceMixin
    implements AdjumpPlatform {
  @override
  Future<void> initSDK(
    String accountId,
    String appId,
    String userId,
  ) =>
      throw UnimplementedError();

  @override
  Future<void> showOfferwall() => throw UnimplementedError();
}

void main() {
  final AdjumpPlatform initialPlatform = AdjumpPlatform.instance;

  test('$MethodChannelAdjump is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAdjump>());
  });

  // test('getPlatformVersion', () async {
  //   Adjump adjumpPlugin = Adjump();
  //   MockAdjumpPlatform fakePlatform = MockAdjumpPlatform();
  //   AdjumpPlatform.instance = fakePlatform;

  //   expect(await adjumpPlugin.getPlatformVersion(), '42');
  // });
}
