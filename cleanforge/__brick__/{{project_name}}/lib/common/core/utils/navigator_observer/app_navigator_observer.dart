import 'package:flutter/material.dart';
import 'package:{{project_name}}/common/core/utils/logger/app_logger.dart';

class AppNavigatorObserver extends NavigatorObserver {
  
  final List<String> navigationPath = [];

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    if (route.settings.name != null) {
      navigationPath.add(route.settings.name!);
    }

    Log.info('Pushed Route: ${route.settings.name}'
        '\nPrevious Route: ${previousRoute?.settings.name ?? "NA"}'
        '\nNavigation Path: ${navigationPath.join(' -> ')}');
  }


  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    if (route.settings.name != null && navigationPath.isNotEmpty) {
      navigationPath.removeLast();
    }
    Log.info('Popped Route: ${route.settings.name}'
        '\nCurrent Route: ${previousRoute?.settings.name ?? "NA"}'
        '\nNavigation Path: ${navigationPath.join(' -> ')}');
  }


  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (oldRoute?.settings.name != null && navigationPath.isNotEmpty) {
      navigationPath.remove(oldRoute!.settings.name);
    }
    if (newRoute?.settings.name != null) {
      navigationPath.add(newRoute!.settings.name!);
    }

    Log.info('Replaced Route: ${oldRoute?.settings.name} with ${newRoute?.settings.name}'
        '\nNavigation Path: ${navigationPath.join(' -> ')}');
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);
    if (route.settings.name != null && navigationPath.contains(route.settings.name)) {
      navigationPath.remove(route.settings.name);
    }
    Log.info('Removed Route: ${route.settings.name}'
        '\nPrevious Route: ${previousRoute?.settings.name ?? "NA"}'
        '\nNavigation Path: ${navigationPath.join(' -> ')}');
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    super.didStartUserGesture(route, previousRoute);
    Log.info('User started a gesture on route: ${route.settings.name}');
  }

  @override
  void didStopUserGesture() {
    super.didStopUserGesture();
    Log.info('User stopped a gesture');
  }
}
