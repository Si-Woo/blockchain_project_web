import 'package:flutter/material.dart';
import 'package:planetchain/home/home.dart';
import 'package:planetchain/home/home_en.dart';
import 'package:planetchain/router/route_path.dart';

class MyRouterDelegate extends RouterDelegate<RoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<RoutePath> {
  RoutePath _selectedPage = RoutePath.home();

  GlobalKey<NavigatorState>? get navigatorKey => GlobalKey<NavigatorState>();

  @override
  RoutePath get currentConfiguration => _selectedPage;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        const MaterialPage(
          key: ValueKey('Home'),
          child: Home(),
        ),
        if (_selectedPage.isEnglishPage)
          const MaterialPage(
            key: ValueKey('HomeEn'),
            child: HomeEn(),
          ),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        // Back to home if the back navigation is triggered
        _selectedPage = RoutePath.home();
        notifyListeners();
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(RoutePath path) async {
    _selectedPage = path;
    notifyListeners();
  }

  // Adding a method to change route path manually
  void changePage(RoutePath path) {
    setNewRoutePath(path);
  }
}

class MyRouteInformationParser extends RouteInformationParser<RoutePath> {
  @override
  Future<RoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = routeInformation.uri; // 이제 uri 속성을 직접 사용합니다.
    if (uri.pathSegments.isEmpty) {
      return RoutePath.home();
    } else if (uri.pathSegments.length == 1 && uri.pathSegments[0] == 'en') {
      return RoutePath.english();
    }
    return RoutePath.home();
  }

  @override
  RouteInformation? restoreRouteInformation(RoutePath path) {
    if (path.isHomePage) {
      return RouteInformation(uri: Uri.parse('/'));
    }
    if (path.isEnglishPage) {
      return RouteInformation(uri: Uri.parse('/en'));
    }
    return null;
  }
}
