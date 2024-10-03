import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'wifi_address_helper_platform_interface.dart';

/// An implementation of [WifiAddressHelperPlatform] that uses method channels.
class MethodChannelWifiAddressHelper extends WifiAddressHelperPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('wifi_address_helper');

  @override
  Future<String?> getPlatformVersion() async => await methodChannel.invokeMethod<String?>('getPlatformVersion');

  @override
  Future<String?> get getAddress async => await methodChannel.invokeMethod<String?>('getWiFiAddress');

}
