/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/pngs
  $AssetsImagesPngsGen get pngs => const $AssetsImagesPngsGen();

  /// Directory path: assets/images/svgs
  $AssetsImagesSvgsGen get svgs => const $AssetsImagesSvgsGen();
}

class $AssetsImagesPngsGen {
  const $AssetsImagesPngsGen();

  /// Directory path: assets/images/pngs/icons
  $AssetsImagesPngsIconsGen get icons => const $AssetsImagesPngsIconsGen();

  /// Directory path: assets/images/pngs/other
  $AssetsImagesPngsOtherGen get other => const $AssetsImagesPngsOtherGen();
}

class $AssetsImagesSvgsGen {
  const $AssetsImagesSvgsGen();

  /// Directory path: assets/images/svgs/icons
  $AssetsImagesSvgsIconsGen get icons => const $AssetsImagesSvgsIconsGen();
}

class $AssetsImagesPngsIconsGen {
  const $AssetsImagesPngsIconsGen();

  /// File path: assets/images/pngs/icons/ic_camera.png
  AssetGenImage get icCamera => const AssetGenImage('assets/images/pngs/icons/ic_camera.png');

  /// File path: assets/images/pngs/icons/ic_gallery.png
  AssetGenImage get icGallery => const AssetGenImage('assets/images/pngs/icons/ic_gallery.png');

  /// List of all assets
  List<AssetGenImage> get values => [icCamera, icGallery];
}

class $AssetsImagesPngsOtherGen {
  const $AssetsImagesPngsOtherGen();

  /// File path: assets/images/pngs/other/png_app_logo.png
  AssetGenImage get pngAppLogo => const AssetGenImage('assets/images/pngs/other/png_app_logo.png');

  /// File path: assets/images/pngs/other/png_auth_bg1.png
  AssetGenImage get pngAuthBg1 => const AssetGenImage('assets/images/pngs/other/png_auth_bg1.png');

  /// File path: assets/images/pngs/other/png_auth_bg2.png
  AssetGenImage get pngAuthBg2 => const AssetGenImage('assets/images/pngs/other/png_auth_bg2.png');

  /// File path: assets/images/pngs/other/png_auth_bg3.png
  AssetGenImage get pngAuthBg3 => const AssetGenImage('assets/images/pngs/other/png_auth_bg3.png');

  /// File path: assets/images/pngs/other/png_auth_bg4.png
  AssetGenImage get pngAuthBg4 => const AssetGenImage('assets/images/pngs/other/png_auth_bg4.png');

  /// File path: assets/images/pngs/other/png_home_user.png
  AssetGenImage get pngHomeUser => const AssetGenImage('assets/images/pngs/other/png_home_user.png');

  /// File path: assets/images/pngs/other/png_login_bg.png
  AssetGenImage get pngLoginBg => const AssetGenImage('assets/images/pngs/other/png_login_bg.png');

  /// File path: assets/images/pngs/other/png_onboarding_bg1.png
  AssetGenImage get pngOnboardingBg1 => const AssetGenImage('assets/images/pngs/other/png_onboarding_bg1.png');

  /// File path: assets/images/pngs/other/png_onboarding_bg2.png
  AssetGenImage get pngOnboardingBg2 => const AssetGenImage('assets/images/pngs/other/png_onboarding_bg2.png');

  /// File path: assets/images/pngs/other/png_onboarding_container.png
  AssetGenImage get pngOnboardingContainer => const AssetGenImage('assets/images/pngs/other/png_onboarding_container.png');

  /// File path: assets/images/pngs/other/png_signup_bg.png
  AssetGenImage get pngSignupBg => const AssetGenImage('assets/images/pngs/other/png_signup_bg.png');

  /// File path: assets/images/pngs/other/png_splash_bg.png
  AssetGenImage get pngSplashBg => const AssetGenImage('assets/images/pngs/other/png_splash_bg.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    pngAppLogo,
    pngAuthBg1,
    pngAuthBg2,
    pngAuthBg3,
    pngAuthBg4,
    pngHomeUser,
    pngLoginBg,
    pngOnboardingBg1,
    pngOnboardingBg2,
    pngOnboardingContainer,
    pngSignupBg,
    pngSplashBg,
  ];
}

class $AssetsImagesSvgsIconsGen {
  const $AssetsImagesSvgsIconsGen();

  /// File path: assets/images/svgs/icons/ic_calender.svg
  SvgGenImage get icCalender => const SvgGenImage('assets/images/svgs/icons/ic_calender.svg');

  /// File path: assets/images/svgs/icons/ic_call.svg
  SvgGenImage get icCall => const SvgGenImage('assets/images/svgs/icons/ic_call.svg');

  /// File path: assets/images/svgs/icons/ic_email.svg
  SvgGenImage get icEmail => const SvgGenImage('assets/images/svgs/icons/ic_email.svg');

  /// File path: assets/images/svgs/icons/ic_lock.svg
  SvgGenImage get icLock => const SvgGenImage('assets/images/svgs/icons/ic_lock.svg');

  /// File path: assets/images/svgs/icons/ic_profile.svg
  SvgGenImage get icProfile => const SvgGenImage('assets/images/svgs/icons/ic_profile.svg');

  /// List of all assets
  List<SvgGenImage> get values => [icCalender, icCall, icEmail, icLock, icProfile];
}

class Assets {
  const Assets._();

  static const String aEnv = '.env';
  static const $AssetsImagesGen images = $AssetsImagesGen();

  /// List of all assets
  static List<String> get values => [aEnv];
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}}) : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}}) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(_assetName, assetBundle: bundle, packageName: package);
    } else {
      loader = _svg.SvgAssetLoader(_assetName, assetBundle: bundle, packageName: package, theme: theme);
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ?? (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
