import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// Created by Alex B. for ABMobile.
/// 17.01.2024
///

late final PackageInfo packageInfo;
const APP_NAME = 'Dart Architects';
final appIcon = Image.asset('res/images/app_icon.png', height: 64.0, width: 64.0);
const APP_DESCRIPTION = 'An app showcasing programming Architecture Patterns and Principles in Dart, with '
    'side-by-side source code views.'
    '\n\nDeveloped by Alex B.';
const GOOGLEPLAY_URL = '';
const GITHUB_URL = '';
const AUTHOR_SITE = '';
//const APPSTORE_URL = '';

final platformType = getCurrentPlatformType();
final isOnMobile =
    {PlatformType.Android, PlatformType.iOS}.contains(platformType);

final isMobileOrWeb = kIsWeb ||
    defaultTargetPlatform == TargetPlatform.iOS ||
    defaultTargetPlatform == TargetPlatform.android;

enum PlatformType { Web, iOS, Android, MacOS, Fuchsia, Linux, Windows, Unknown }

PlatformType getCurrentPlatformType() {
  // ! `Platform` is not available on web, so we must check web first.
  if (kIsWeb) {
    return PlatformType.Web;
  }

  if (Platform.isMacOS) {
    return PlatformType.MacOS;
  }

  if (Platform.isFuchsia) {
    return PlatformType.Fuchsia;
  }

  if (Platform.isLinux) {
    return PlatformType.Linux;
  }

  if (Platform.isWindows) {
    return PlatformType.Windows;
  }

  if (Platform.isIOS) {
    return PlatformType.iOS;
  }

  if (Platform.isAndroid) {
    return PlatformType.Android;
  }

  return PlatformType.Unknown;
}
