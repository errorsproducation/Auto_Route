import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:try_auto/Bottom_Nav.dart';
import 'package:try_auto/Model/Model.dart';
import 'package:try_auto/Model/Product_Model.dart';
import 'package:try_auto/Screens/All_Product.dart';
import 'package:try_auto/Screens/Buy_Page.dart';
import 'package:try_auto/Screens/Profile_Page.dart';

import '../Screens/Home_Page.dart';

part 'App_Route.gr.dart';


@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    // HomeScreen is generated as HomeRoute because
    // of the replaceInRouteName property

    AutoRoute(
      page: Bottom_Nav.page,path: '/nav',initial: true,
      children: [
        AutoRoute(page: Home_Page.page),
        AutoRoute(page: Profile_Page.page),
        AutoRoute(page: AllProduct_Page.page),
      ],
    ),
    AutoRoute(page: Buy_Page.page,path: '/buy'),




  ];
}