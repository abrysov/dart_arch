import 'package:device_preview_screenshot/device_preview_screenshot.dart';
import 'package:flutter/material.dart';

/// Created by Alex B. for ABMobile.
/// 17.01.2024
///
class DevicePreviewExample extends StatefulWidget {
  const DevicePreviewExample({super.key});

  @override
  State<DevicePreviewExample> createState() => _DevicePreviewExampleState();
}

class _DevicePreviewExampleState extends State<DevicePreviewExample> {
  @override
  Widget build(BuildContext context) {
    return DevicePreview(
        enabled: true,
        builder: (_) => _appUI(),
        tools: const [...DevicePreview.defaultTools]);
  }

  Widget _appUI() {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: Scaffold(
        appBar: AppBar(title: Text('Architect throw Dart')),
        body: Center(child: Image.asset('res/images/dart-side.png')),
      ),
    );
  }
}
