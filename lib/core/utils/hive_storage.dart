// ignore_for_file: constant_identifier_names

import 'package:eventera/core/utils/app_exports.dart';

class Prefobj {
  static Box? preferences; // Static reference to preferences box
}

class Prefkeys {
  static const String AUTHTOKEN = 'auth_token';
  static const String LIGHTDARK = 'light_dark';
  static const String FOLLOW_SYSTEM = 'follow_system';
  static const String CALLER_IDENTIFIER = 'caller_identifier';
  static const String ONBOARDING = 'onboarding';
  static const String IS_LOGIN = 'is_login';
  static const String DRAFT_ORDER_ID = 'draft_order_id';
  static const String PROFILE_DATA = 'profile_data';
}
