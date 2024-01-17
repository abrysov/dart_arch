import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './my_app_routes.dart' show kAppRoutingTable;
import './my_app_settings.dart';
import './themes.dart';

/// Created by Alex B. for ABMobile.
/// 16.01.2024
///
class ArchMainApp extends StatelessWidget {
  final AppSettings settings;
  const ArchMainApp(this.settings, {super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppSettings>.value(
      value: settings,
      child: const _MyMaterialApp(),
    );
  }
}

class _MyMaterialApp extends StatelessWidget {
  const _MyMaterialApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //TODO add the local
      title: 'Architecture through Dart',
      theme: Provider.of<AppSettings>(context).isDarkMode
          ? darkTheme
          : lightTheme,
      routes: kAppRoutingTable,
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    );
  }
}
