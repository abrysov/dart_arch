import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:substring_highlight/substring_highlight.dart';

import './my_app_routes.dart'
    show allRoutes, kRouteNameToRoute, kRouteNameToRouteGroup;
import './my_app_settings.dart';
import './aroute.dart';

/// Created by Alex B. for ABMobile.
/// 16.01.2024
///
class RouteSearchDelegate extends SearchDelegate<String> {
  @override
  ThemeData appBarTheme(BuildContext context) => Theme.of(context);

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      if (this.query.isNotEmpty)
        IconButton(
          tooltip: 'Clear',
          icon: const Icon(Icons.clear),
          onPressed: () => this.query = '',
        )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      icon: const Icon(Icons.arrow_back),
      onPressed: () => this.close(context, ''),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    Iterable<ARoute> suggestions = [
      for (final routeName in Provider.of<AppSettings>(context).searchHistory)
        if (kRouteNameToRoute.containsKey(routeName))
          kRouteNameToRoute[routeName]!
    ];
    if (this.query.isNotEmpty) {
      suggestions = allRoutes
          .where(
            (route) =>
                route.title.toLowerCase().contains(query.toLowerCase()) ||
                route.description.toLowerCase().contains(query.toLowerCase()),
          )
          .toList();
    }
    return _buildSuggestionsList(suggestions);
  }

  Widget _buildSuggestionsList(Iterable<ARoute> suggestions) {
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext context, int i) {
        final route = suggestions.elementAt(i);
        final routeGroup = kRouteNameToRouteGroup[route.routeName]!;
        return ListTile(
          leading: query.isEmpty ? const Icon(Icons.history) : routeGroup.icon,
          title: SubstringHighlight(
            text: '${routeGroup.groupName}/${route.title}',
            term: query,
            textStyle: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          subtitle: route.description.isEmpty
              ? null
              : SubstringHighlight(
                  text: route.description,
                  term: query,
                  textStyle: Theme.of(context).textTheme.bodyMedium!,
                ),
          onTap: () {
            Provider.of<AppSettings>(context, listen: false)
                .addSearchHistory(route.routeName);
            Navigator.of(context).popAndPushNamed(route.routeName);
          },
          trailing: const Icon(Icons.keyboard_arrow_right),
        );
      },
    );
  }
}
