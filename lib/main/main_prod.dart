import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:eventera/core/flavor_config/app_config.dart';
import 'package:eventera/core/flavor_config/environment_config.dart';
import 'package:eventera/core/main/event_era.dart';
import 'package:eventera/core/utils/env.dart';
import 'package:eventera/core/utils/logger.dart';
import 'package:eventera/widgets/custom_widget/custom_error_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  try {
    await dotenv.load(fileName: ".env");
  } catch (e) {
    Logger.lOG("Error loading .env file: $e");
  }

// Custom error widget
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return CustomErrorWidget(errorMessage: details.exception.toString());
  };
  // Get device info
  final deviceInfo = DeviceInfoPlugin();

  String? deviceId = '';
  int? deviceOs = 0;

  if (Platform.isAndroid) {
    final androidInfo = await deviceInfo.androidInfo;
    deviceId = androidInfo.id;
    deviceOs = 1;
  } else if (Platform.isIOS) {
    final iosInfo = await deviceInfo.iosInfo;
    deviceId = iosInfo.identifierForVendor;
    deviceOs = 2;
  }

  EnvConfig devConfig = EnvConfig(
    baseUrl: DEV_SERVER_BASEURL,
    deviceId: deviceId ?? '',
    deviceOs: deviceOs,
    localIdentifier: '',
  );
  // Env config
  FlavorConfig.initialize(flavor: Flavor.prod, env: devConfig);

  Logger.lOG(
    "FLAVOR             : [36m[1m[4m${FlavorConfig.instance.flavor}\u001b[0m\n"
    "DEVICE ID          : $deviceId\n"
    "DEVICE OS          : $deviceOs\n"
    "BASE URL           : $DEV_SERVER_BASEURL\n",
  );

  try {
    final Directory appDocDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocDir.path);
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await Hive.openBox(
      'RoomEightBox',
    ).then((value) => runApp(const MyApp()));
  } catch (e, stackTrace) {
    Logger.lOG('Error initializing app: $e\n$stackTrace');
  }
}
