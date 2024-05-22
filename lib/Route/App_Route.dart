import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:try_auto/Screens/Profile_Page.dart';

import '../Screens/Home_Page.dart';

part 'App_Route.gr.dart';


@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    // HomeScreen is generated as HomeRoute because
    // of the replaceInRouteName property
    AutoRoute(page: Home_Page.page,path: '/home',initial: true),
    AutoRoute(page: Profile_Page.page,path: '/profile'),
  ];
}