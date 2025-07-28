import 'package:eventera/core/utils/app_exports.dart';
import 'package:flutter/cupertino.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    this.margin,
    this.onPressed,
    this.buttonStyle,
    this.alignment,
    this.buttonTextStyle,
    this.isDisabled = false,
    this.height,
    this.width,
    this.iconSpacing,
    this.isLoading = false,
    this.secondary = false,
    this.borderRadius,
    required this.text,
  });

  final BoxDecoration? decoration;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onPressed;
  final ButtonStyle? buttonStyle;
  final Alignment? alignment;
  final TextStyle? buttonTextStyle;
  final bool isDisabled;
  final double? height;
  final double? width;
  final double? iconSpacing;
  final bool isLoading;
  final String text;
  final bool secondary;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 55.h,
      width: width ?? MediaQuery.of(context).size.width,
      margin: margin,
      decoration: decoration ??
          BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0XFF15BE77),
                Color.fromARGB(255, 32, 87, 38),
              ], // Example gradient
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
          ),
      child: ElevatedButton(
        style: buttonStyle ??
            ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
              ),
              padding: EdgeInsets.zero,
              textStyle: Theme.of(
                context,
              ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w700),
            ),
        onPressed: isDisabled
            ? null
            : () {
                HapticFeedback.lightImpact();
                if (onPressed != null) onPressed!();
              },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leftIcon != null) leftIcon!,
            if (leftIcon != null && iconSpacing != null)
              SizedBox(width: iconSpacing),
            if (isLoading)
              const CupertinoActivityIndicator()
            else
              Text(
                text,
                style: secondary
                    ? Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          color: Theme.of(context).primaryColor,
                        )
                    : buttonTextStyle ??
                        Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1,
                              fontSize: 14.sp,
                              color: isDisabled
                                  ? Theme.of(context).disabledColor
                                  : Theme.of(context).colorScheme.onPrimary,
                            ),
              ),
            if (rightIcon != null && iconSpacing != null)
              SizedBox(width: iconSpacing),
            if (rightIcon != null) rightIcon!,
          ],
        ),
      ),
    );
  }
}
