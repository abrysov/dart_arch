import 'package:device_preview_screenshot/device_preview_screenshot.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';

import './constants.dart';
import './my_app_settings.dart';
import './main_app.dart';

/// Created by Alex B. for ABMobile.
/// 16.01.2024
///
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (isMobileOrWeb) {
    //TODO Add the YaMetrics main Instance
  }
  packageInfo = await PackageInfo.fromPlatform();
  final settings = await AppSettings.create();
  final appDir = await getApplicationDocumentsDirectory();
  runApp(
    ProviderScope(
      overrides: [
        mySettingsProvider.overrideWith((ref) => settings),
      ],
      child: DevicePreview(
        enabled: !kReleaseMode,
        builder: (_) => ArchMainApp(settings),
        tools: [
          ...DevicePreview.defaultTools,
          DevicePreviewScreenshot(
            onScreenshot: screenshotAsFiles(appDir),
          ),
        ],
      ),
    ),
  );
}
