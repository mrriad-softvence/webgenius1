// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsColorGen {
  const $AssetsColorGen();

  /// File path: assets/color/colors.xml
  String get colors => 'assets/color/colors.xml';

  /// List of all assets
  List<String> get values => [colors];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Minus.png
  AssetGenImage get minus => const AssetGenImage('assets/icons/Minus.png');

  /// File path: assets/icons/Plus.png
  AssetGenImage get plus => const AssetGenImage('assets/icons/Plus.png');

  /// File path: assets/icons/User_light.png
  AssetGenImage get userLight =>
      const AssetGenImage('assets/icons/User_light.png');

  /// File path: assets/icons/arrow-left_icon.png
  AssetGenImage get arrowLeftIconPng =>
      const AssetGenImage('assets/icons/arrow-left_icon.png');

  /// File path: assets/icons/arrow_left_icon.png
  AssetGenImage get arrowLeftIconPng_ =>
      const AssetGenImage('assets/icons/arrow_left_icon.png');

  /// File path: assets/icons/backbutton_icon.svg
  String get backbuttonIcon => 'assets/icons/backbutton_icon.svg';

  /// File path: assets/icons/camera_icon.png
  AssetGenImage get cameraIcon =>
      const AssetGenImage('assets/icons/camera_icon.png');

  /// File path: assets/icons/circle_icon.png
  AssetGenImage get circleIcon =>
      const AssetGenImage('assets/icons/circle_icon.png');

  /// File path: assets/icons/contract_icon.png
  AssetGenImage get contractIcon =>
      const AssetGenImage('assets/icons/contract_icon.png');

  /// File path: assets/icons/delivery_icon.png
  AssetGenImage get deliveryIcon =>
      const AssetGenImage('assets/icons/delivery_icon.png');

  /// File path: assets/icons/forward.png
  AssetGenImage get forward => const AssetGenImage('assets/icons/forward.png');

  /// File path: assets/icons/google_icon.png
  AssetGenImage get googleIcon =>
      const AssetGenImage('assets/icons/google_icon.png');

  /// File path: assets/icons/loccation_icon.png
  AssetGenImage get loccationIcon =>
      const AssetGenImage('assets/icons/loccation_icon.png');

  /// File path: assets/icons/lock_icon.png
  AssetGenImage get lockIcon =>
      const AssetGenImage('assets/icons/lock_icon.png');

  /// File path: assets/icons/mage_eye-off_icon.png
  AssetGenImage get mageEyeOffIcon =>
      const AssetGenImage('assets/icons/mage_eye-off_icon.png');

  /// File path: assets/icons/message_icon.png
  AssetGenImage get messageIcon =>
      const AssetGenImage('assets/icons/message_icon.png');

  /// File path: assets/icons/notification_icon.png
  AssetGenImage get notificationIcon =>
      const AssetGenImage('assets/icons/notification_icon.png');

  /// File path: assets/icons/order_icon.png
  AssetGenImage get orderIcon =>
      const AssetGenImage('assets/icons/order_icon.png');

  /// File path: assets/icons/settings_icon.png
  AssetGenImage get settingsIcon =>
      const AssetGenImage('assets/icons/settings_icon.png');

  /// File path: assets/icons/start_group_icon.png
  AssetGenImage get startGroupIcon =>
      const AssetGenImage('assets/icons/start_group_icon.png');

  /// File path: assets/icons/start_icon.png
  AssetGenImage get startIcon =>
      const AssetGenImage('assets/icons/start_icon.png');

  /// File path: assets/icons/tiffyn_logo.png
  AssetGenImage get tiffynLogo =>
      const AssetGenImage('assets/icons/tiffyn_logo.png');

  /// File path: assets/icons/time_icon.png
  AssetGenImage get timeIcon =>
      const AssetGenImage('assets/icons/time_icon.png');

  /// File path: assets/icons/vendor_icon.png
  AssetGenImage get vendorIcon =>
      const AssetGenImage('assets/icons/vendor_icon.png');

  /// File path: assets/icons/warning_icon.png
  AssetGenImage get warningIcon =>
      const AssetGenImage('assets/icons/warning_icon.png');

  /// List of all assets
  List<dynamic> get values => [
    minus,
    plus,
    userLight,
    arrowLeftIconPng,
    arrowLeftIconPng_,
    backbuttonIcon,
    cameraIcon,
    circleIcon,
    contractIcon,
    deliveryIcon,
    forward,
    googleIcon,
    loccationIcon,
    lockIcon,
    mageEyeOffIcon,
    messageIcon,
    notificationIcon,
    orderIcon,
    settingsIcon,
    startGroupIcon,
    startIcon,
    tiffynLogo,
    timeIcon,
    vendorIcon,
    warningIcon,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/FinalTiffynLogo 1.png
  AssetGenImage get finalTiffynLogo1 =>
      const AssetGenImage('assets/images/FinalTiffynLogo 1.png');

  /// File path: assets/images/food_item1.png
  AssetGenImage get foodItem1 =>
      const AssetGenImage('assets/images/food_item1.png');

  /// File path: assets/images/product_item.png
  AssetGenImage get productItem =>
      const AssetGenImage('assets/images/product_item.png');

  /// File path: assets/images/profile_cover.png
  AssetGenImage get profileCover =>
      const AssetGenImage('assets/images/profile_cover.png');

  /// File path: assets/images/profile_pic.png
  AssetGenImage get profilePic =>
      const AssetGenImage('assets/images/profile_pic.png');

  /// File path: assets/images/resurant_item.png
  AssetGenImage get resurantItem =>
      const AssetGenImage('assets/images/resurant_item.png');

  /// File path: assets/images/review_image.png
  AssetGenImage get reviewImage =>
      const AssetGenImage('assets/images/review_image.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    finalTiffynLogo1,
    foodItem1,
    productItem,
    profileCover,
    profilePic,
    resurantItem,
    reviewImage,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsColorGen color = $AssetsColorGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
