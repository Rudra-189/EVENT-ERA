import 'package:eventera/core/utils/app_exports.dart';

class ButtonThemeHelper {
  static ButtonStyle greenButtonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      disabledBackgroundColor: const Color(0xff239C71).withValues(alpha: 0.5),
      backgroundColor: const Color(0xff239C71),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      padding: EdgeInsets.zero,
    );
  }
}
