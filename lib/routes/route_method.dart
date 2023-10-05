//app file

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:threadsapp/routes/route_name.dart';
import 'package:threadsapp/screens/app_screens/dashBoardScreen/dashBoardScreen.dart';
import 'package:threadsapp/screens/app_screens/privacyScreen/privacyScreen.dart';
import 'package:threadsapp/screens/auth_screens/switchAccountScreen/switchAccountScreen.dart';

import '../screens/app_screens/activityScreen/activityScreen.dart';
import '../screens/app_screens/newThreadsScreen/newThreadsScreen.dart';
import '../screens/app_screens/profileScreen/ProfileScreen.dart';
import '../screens/app_screens/searchBarScreen/SearchBarScreen.dart';

RouteName _routeName = RouteName();

class AppRoute {
  final List<GetPage> getPages = [
    GetPage(
        name: _routeName.switchAccountScreen,
        page: () => SwitchAccountScreen()),
    GetPage(name: _routeName.dashBoardScreen, page: () => DashBoardScreen()),
    GetPage(name: _routeName.searchBarScreen, page: () => SearchBarScreen()),
    GetPage(name: _routeName.activityScreen, page: () => ActivityScreen()),
    GetPage(name: _routeName.newThreadsScreen, page: () => NewThreadsScreen()),
    GetPage(name: _routeName.profileScreen, page: () => ProfileScreen()),
    GetPage(name: _routeName.privacyScreen, page: () => PrivacyScreen()),
  ];
}
