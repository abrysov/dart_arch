import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'my_app_routes.dart';

import './my_app_settings.dart';
import './aroute.dart';
import 'example/monetization_inline_banner_ad_ex.dart';

/// Created by Alex B. for ABMobile.
/// 16.01.2024
///
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  List<BottomNavigationBarItem> get _bottomNavBarItems {
    final newBasic = nNewRoutes(kMyAppRoutesBasic);
    final newAdvanced = nNewRoutes(appRoutesAdvanced);
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        backgroundColor: Colors.blue,
        icon: Badge(
            label: Text(newBasic.toString()),
            isLabelVisible: newBasic > 0,
            child: Icon(Icons.library_books)),
        label: 'Basics',
      ),
      BottomNavigationBarItem(
        backgroundColor: Colors.blueAccent,
        icon: Badge(
            label: Text(newAdvanced.toString()),
            isLabelVisible: newAdvanced > 0,
            child: Icon(Icons.insert_chart)),
        label: 'Advanced',
      ),
      BottomNavigationBarItem(
        backgroundColor: Colors.indigo,
        icon: Icon(Icons.star),
        label: 'Bookmarks',
      ),
    ];
  }

  final ScrollController _scrollController1 = ScrollController();
  final ScrollController _scrollController2 = ScrollController();
  final ScrollController _scrollController3 = ScrollController();

  @override
  void initState() {
    super.initState();
    //! Show intro screen if it's never shown before.
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        final settings = ref.read(mySettingsProvider);
        if (settings.introIsShown == false) {
          //TODO add onboarding
          // Navigator.of(context)
          //     .push(IntroductionScreenExample.route())
          //     .then((_) => settings.introIsShown = true);
        }
      },
    );
  }

  @override
  void dispose() {
    _scrollController1.dispose();
    _scrollController2.dispose();
    _scrollController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final basicDemos = <Widget>[
      for (final RoutesGroup group in kMyAppRoutesBasic)
        _myRouteGroupToExpansionTile(group),
      const MyBannerAd(),
    ];
    final advancedDemos = <Widget>[
      for (final RoutesGroup group in appRoutesAdvanced)
        _myRouteGroupToExpansionTile(group),
      const MyBannerAd(),
    ];
    final bookmarkAndAboutDemos = <Widget>[
      for (final ARoute route in ref.watch(mySettingsProvider).starredRoutes)
        _myRouteToListTile(route, leading: const Icon(Icons.bookmark)),
      _myRouteToListTile(aboutRoute, leading: const Icon(Icons.info)),
      const MyBannerAd(),
    ];
    return Scaffold(
      body: IndexedStack(
        index: ref.watch(mySettingsProvider).currentTabIdx,
        children: <Widget>[
          ListView(controller: _scrollController1, children: basicDemos),
          ListView(controller: _scrollController2, children: advancedDemos),
          ListView(
              controller: _scrollController3, children: bookmarkAndAboutDemos),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavBarItems,
        currentIndex: ref.watch(mySettingsProvider).currentTabIdx,
        type: BottomNavigationBarType.shifting,
        onTap: (int index) {
          ref.read(mySettingsProvider).currentTabIdx = index;
        },
      ),
    );
  }

  Widget _myRouteToListTile(ARoute myRoute,
      {Widget? leading, IconData trialing = Icons.keyboard_arrow_right}) {
    final mySettings = ref.watch(mySettingsProvider);
    final routeTitleTextStyle = Theme.of(context)
        .textTheme
        .bodyMedium!
        .copyWith(fontWeight: FontWeight.bold);
    final leadingWidget =
        leading ?? mySettings.starStatusOfRoute(myRoute.routeName);
    final isNew = mySettings.isNewRoute(myRoute);
    return ListTile(
      leading: isNew
          ? Badge(
              alignment: AlignmentDirectional.topEnd,
              child: leadingWidget,
            )
          : leadingWidget,
      title: Text(myRoute.title, style: routeTitleTextStyle),
      trailing: Icon(trialing),
      subtitle: myRoute.description.isEmpty ? null : Text(myRoute.description),
      onTap: () {
        if (isNew) {
          mySettings.markRouteKnown(myRoute);
        }
        Navigator.of(context).pushNamed(myRoute.routeName);
      },
    );
  }

  Widget _myRouteGroupToExpansionTile(RoutesGroup myRouteGroup) {
    final nNew = ref.watch(mySettingsProvider).numNewRoutes(myRouteGroup);
    return Card(
      key: ValueKey(myRouteGroup.groupName),
      child: ExpansionTile(
        leading: nNew > 0
            ? Badge(label: Text('$nNew'), child: myRouteGroup.icon)
            : myRouteGroup.icon,
        title: Text(
          myRouteGroup.groupName,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        children: myRouteGroup.routes.map(_myRouteToListTile).toList(),
      ),
    );
  }

  int nNewRoutes(List<RoutesGroup> routeGroups) {
    int res = 0;
    for (final group in routeGroups) {
      res += ref.watch(mySettingsProvider).numNewRoutes(group);
    }
    return res;
  }
}
