import 'package:eventera/core/flavor_config/app_config.dart';

class ApiEndPoint {
  static String get baseUrl => FlavorConfig.instance.env.baseUrl;

  static String get signInUserUrl => "$baseUrl/api/v1/auth/signin";
}
