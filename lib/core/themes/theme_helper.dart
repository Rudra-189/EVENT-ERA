import 'package:eventera/core/themes/custom_color_extension.dart';
import 'package:flutter/material.dart';

class MyAppThemeHelper {
  // Define Gilroy TextTheme
  static TextTheme _gilroyTextTheme(Color textColor, Color displayColor) {
    return TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'Gilroy',
        color: displayColor,
        fontSize: 57,
        fontWeight: FontWeight.w400,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Gilroy',
        color: displayColor,
        fontSize: 45,
        fontWeight: FontWeight.w400,
      ),
      displaySmall: TextStyle(
        fontFamily: 'Gilroy',
        color: displayColor,
        fontSize: 36,
        fontWeight: FontWeight.w400,
      ),
      headlineLarge: TextStyle(
        fontFamily: 'Gilroy',
        color: textColor,
        fontSize: 32,
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: TextStyle(
        fontFamily: 'Gilroy',
        color: textColor,
        fontSize: 28,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Gilroy',
        color: textColor,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Gilroy',
        color: textColor,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Gilroy',
        color: textColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Gilroy',
        color: textColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Gilroy',
        color: textColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Gilroy',
        color: textColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Gilroy',
        color: textColor,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        fontFamily: 'Gilroy',
        color: textColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Gilroy',
        color: textColor,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        fontFamily: 'Gilroy',
        color: textColor,
        fontSize: 11,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        brightness: Brightness.light,
        primary: const Color.fromARGB(255, 0, 162, 0),
        onPrimary: const Color(0xffffffff),
        primaryContainer: ThemeData().customColors.primaryColor,
        secondary: const Color(0xff0F3D4D),
        onSecondary: const Color(0xff04163C),
        secondaryContainer: const Color(0xFF222222),
        error: const Color(0xffFF7B7B),
        onError: const Color(0xffFF7B7B),
        surface: const Color(0xffF8F9FA),
        onSurface: const Color(0xFF222222),
        outline: const Color(0xFF222222),
      ),
      brightness: Brightness.light,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      fontFamily: 'Gilroy',
      textTheme: _gilroyTextTheme(
        const Color(0xff000000),
        const Color(0xFF222222),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStatePropertyAll(Color(0xff2E2E2E)),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
      ),
      appBarTheme: const AppBarTheme(
        color: Color(0xFF222222),
        titleTextStyle: TextStyle(
          fontFamily: 'Gilroy',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color(0xffFFFFFF),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: const BorderSide(color: Color(0xffDEDEDE), width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: const BorderSide(color: Color(0xffFFFFFF), width: 1),
        ),
        errorMaxLines: 2,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: const BorderSide(color: Color(0xFF414141), width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: const BorderSide(color: Colors.redAccent, width: 1),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: const Color(
            0xFF0061A2,
          ).withValues(alpha: 0.5),
          backgroundColor: const Color(0xFF0061A2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          textStyle: const TextStyle(
            fontFamily: 'Gilroy',
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        checkColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return Colors.white;
          }
          return Color(0xff5C5C5C);
        }),
        side: BorderSide(color: Color(0xff5C5C5C), width: 2),
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return Color(0xFF0061A2);
          }
          return Colors.white;
        }),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.dark(
        brightness: Brightness.dark,
        primary: const Color.fromARGB(255, 0, 162, 0),
        onPrimary: const Color.fromARGB(255, 0, 0, 0),
        primaryContainer: ThemeData().customColors.primaryColor,
        secondary: const Color(0xff0F3D4D),
        onSecondary: const Color(0xff04163C),
        secondaryContainer: const Color(0xFF222222),
        error: const Color(0xffFF7B7B),
        onError: const Color(0xffFF7B7B),
        surface: const Color(0xffF8F9FA),
        onSurface: const Color(0xFF222222),
        outline: const Color(0xFF222222),
      ),
      brightness: Brightness.dark,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      fontFamily: 'Gilroy',
      textTheme: _gilroyTextTheme(
        const Color(0xffFFFFFF),
        const Color(0xFF222222),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStatePropertyAll(Color(0xff2E2E2E)),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
      ),
      appBarTheme: const AppBarTheme(
        color: Color(0xFF222222),
        titleTextStyle: TextStyle(
          fontFamily: 'Gilroy',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color(0xffFFFFFF),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: const BorderSide(color: Color(0xffDEDEDE), width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: const BorderSide(color: Color(0xffFFFFFF), width: 1),
        ),
        errorMaxLines: 2,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: const BorderSide(color: Color(0xFF0061A2), width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: const BorderSide(color: Colors.redAccent, width: 2),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: const Color(
            0xFF0061A2,
          ).withValues(alpha: 0.5),
          backgroundColor: const Color(0xFF0061A2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          textStyle: const TextStyle(
            fontFamily: 'Gilroy',
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        checkColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return Colors.white;
          }
          return Color(0xff5C5C5C);
        }),
        side: BorderSide(color: Color(0xff5C5C5C), width: 2),
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return Color(0xFF0061A2);
          }
          return Colors.white;
        }),
      ),
    );
  }
}
