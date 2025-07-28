import 'package:eventera/core/themes/custom_color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextInputField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? readOnly;
  final bool enabled;
  final int maxLines;
  final Function(String)? onChanged;
  final Function()? ontap;

  const CustomTextInputField({
    super.key,
    required this.hint,
    required this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
    this.readOnly = false,
    this.enabled = true,
    this.maxLines = 1,
    this.onChanged,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: Theme.of(context).customColors.primaryColor,
      obscureText: obscureText,
      keyboardType: keyboardType,
      enabled: enabled,
      maxLines: maxLines,
      onTap: ontap,
      readOnly: readOnly ?? false,
      validator: validator,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          fontSize: 15.sp, color: Theme.of(context).customColors.textdarkcolor),
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Theme.of(context).customColors.textfiledfillColor,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: 14.sp,
            color: Theme.of(context).customColors.hinttextcolor),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color:
                    Theme.of(context).customColors.textFiledFocusedBorderColor!,
                width: 0.65),
            borderRadius: BorderRadius.circular(12.r)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color:
                    Theme.of(context).customColors.textFiledEnabledBorderColor!,
                width: 0.65),
            borderRadius: BorderRadius.circular(12.r)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context).customColors.redcolor!, width: 0.65),
            borderRadius: BorderRadius.circular(12.r)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context).customColors.redcolor!, width: 0.65),
            borderRadius: BorderRadius.circular(12.r)),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
      ),
      onChanged: onChanged,
    );
  }
}
