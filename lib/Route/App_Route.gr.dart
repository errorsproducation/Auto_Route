// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'App_Route.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    Home_Page.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Home(),
      );
    },
    Profile_Page.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Profile(),
      );
    },
  };
}

/// generated route for
/// [Home_Page]
class Home_Page extends PageRouteInfo<void> {
  const Home_Page({List<PageRouteInfo>? children})
      : super(
          Home_Page.name,
          initialChildren: children,
        );

  static const String name = 'Home_Page';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Profile_Page]
class Profile_Page extends PageRouteInfo<void> {
  const Profile_Page({List<PageRouteInfo>? children})
      : super(
          Profile_Page.name,
          initialChildren: children,
        );

  static const String name = 'Profile_Page';

  static const PageInfo<void> page = PageInfo<void>(name);
}
