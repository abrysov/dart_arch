import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

import '../constants.dart';

/// Created by Alex B. for ABMobile.
/// 17.01.2024
///
class AboutRoute extends StatelessWidget {
  const AboutRoute({super.key});

  // These tiles are also used as drawer nav items in home route.
  static final List<Widget> aboutListTiles = <Widget>[
    const ListTile(
      title: Text(APP_DESCRIPTION),
    ),
    const Divider(),
    ListTile(
      leading: const Icon(Icons.code),
      title: const Text('Source code on GitHub'),
      onTap: () => url_launcher.launchUrl(Uri.parse(GITHUB_URL)),
    ),
    ListTile(
      leading: const Icon(Icons.bug_report),
      title: const Text('Report issue on GitHub'),
      onTap: () => url_launcher.launchUrl(Uri.parse('$GITHUB_URL/issues')),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final header = ListTile(
      leading: appIcon,
      title: const Text(APP_NAME),
      subtitle: Text(packageInfo.version),
      trailing: IconButton(
        icon: const Icon(Icons.info),
        onPressed: () {
          showAboutDialog(
            context: context,
            applicationName: APP_NAME,
            applicationVersion: packageInfo.version,
            applicationIcon: appIcon,
            children: <Widget>[const Text(APP_DESCRIPTION)],
          );
        },
      ),
    );
    return ListView(
      children: <Widget>[
        header,
        ...aboutListTiles,
        ListTile(
          leading: const Icon(Icons.shop),
          title: const Text('Rate the app'),
          onTap: () =>
              Navigator.of(context).pushNamed('/growth_inapp_review_ex'),
        ),
        ListTile(
          leading: const Icon(Icons.apps),
          title: const Text('My Other Apps'),
          onTap: () => Navigator.of(context).pushNamed('/growth_my_other_apps'),
        ),
      ],
    );
  }
}
