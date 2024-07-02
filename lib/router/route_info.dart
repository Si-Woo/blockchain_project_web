import 'package:flutter/material.dart';
import 'package:planetchain/router/route_path.dart';

class MyRouteInformationParser extends RouteInformationParser<RoutePath> {
  @override
  Future<RoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = routeInformation.uri; // 이제 uri 속성을 직접 사용합니다.
    if (uri.pathSegments.isEmpty) {
      return RoutePath.home();
    } else if (uri.pathSegments.length == 1 && uri.pathSegments[0] == 'en') {
      return RoutePath.homeEn();
    } else if (uri.pathSegments.length == 1 &&
        uri.pathSegments[0] == 'donation') {
      return RoutePath.donation();
    } else if (uri.pathSegments.length == 1 &&
        uri.pathSegments[0] == 'donationEn') {
      return RoutePath.donationEn();
    }
    return RoutePath.pageNotFound();
  }

  @override
  RouteInformation? restoreRouteInformation(RoutePath path) {
    if (path.isHomePage) {
      return RouteInformation(uri: Uri.parse('/'));
    }
    if (path.isHomeEnPage) {
      return RouteInformation(uri: Uri.parse('/en'));
    }
    if (path.isDonationPage) {
      return RouteInformation(uri: Uri.parse('/donation'));
    }
    if (path.isDonationEnPage) {
      return RouteInformation(uri: Uri.parse('/donationEn'));
    }
    return null;
  }
}
