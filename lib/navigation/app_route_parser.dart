import 'package:flutter/cupertino.dart';
import 'package:flutter_social/navigation/app_link.dart';

class AppRouteParser extends RouteInformationParser<AppLink> {
  @override
  Future<AppLink> parseRouteInformation(
      RouteInformation routeInformation) async {
    final link = AppLink.fromLocation(routeInformation.location!);
    return link;
  }

  @override
  RouteInformation restoreRouteInformation(AppLink appLink) {
    final location = appLink.toLocation();
    return RouteInformation(location: location);
  }
}
