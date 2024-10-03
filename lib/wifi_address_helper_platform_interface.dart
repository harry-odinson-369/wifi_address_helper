import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'wifi_address_helper_method_channel.dart';

abstract class WifiAddressHelperPlatform extends PlatformInterface {
  /// Constructs a WifiAddressHelperPlatform.
  WifiAddressHelperPlatform() : super(token: _token);

  static final Object _token = Object();

  static WifiAddressHelperPlatform _instance = MethodChannelWifiAddressHelper();

  /// The default instance of [WifiAddressHelperPlatform] to use.
  ///
  /// Defaults to [MethodChannelWifiAddressHelper].
  static WifiAddressHelperPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WifiAddressHelperPlatform] when
  /// they register themselves.
  static set instance(WifiAddressHelperPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> get getAddress {
    throw UnimplementedError("getAddress function has not been implemented.");
  }

}
