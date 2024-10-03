
import 'wifi_address_helper_platform_interface.dart';

class WifiAddressHelper {
  static Future<String?> getPlatformVersion() => WifiAddressHelperPlatform.instance.getPlatformVersion();

  static Future<String?> get getAddress => WifiAddressHelperPlatform.instance.getAddress;

}
