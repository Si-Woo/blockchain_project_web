import 'package:flutter/material.dart';
import 'package:planetchain/donation/donation.dart';
import 'package:planetchain/donation/donation_en.dart';
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
        if (_selectedPage.isHomeEnPage)
          const MaterialPage(
            key: ValueKey('HomeEn'),
            child: HomeEn(),
          ),
        if (_selectedPage.isDonationPage)
          const MaterialPage(
            key: ValueKey('Donation'),
            child: Donation(), // Assuming you have a DonationPage widget
          ),
        if (_selectedPage.isDonationEnPage)
          const MaterialPage(
            key: ValueKey('DonationEn'),
            child: DonationEn(), // Assuming you have a DonationPage widget
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
