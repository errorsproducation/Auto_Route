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
    AllProduct_Page.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child:  AllProduct(),
      );
    },
    Buy_Page.name: (routeData) {
      final args = routeData.argsAs<BuyArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Buy(
          key: args.key,
          productModel: args.productModel,
        ),
      );
    },
    Home_Page.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Home(),
      );
    },
    Bottom_Nav.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Nav(),
      );
    },
    Profile_Page.name: (routeData) {
      final args = routeData.argsAs<ProfileArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Profile(model: args.model),
      );
    },
  };
}

/// generated route for
/// [AllProduct_Page]
class AllProduct_Page extends PageRouteInfo<void> {
  const AllProduct_Page({List<PageRouteInfo>? children})
      : super(
    AllProduct_Page.name,
    initialChildren: children,
  );

  static const String name = 'AllProduct_Page';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Buy_Page]
class Buy_Page extends PageRouteInfo<BuyArgs> {
  Buy_Page({
    Key? key,
    required ProductModel productModel,
    List<PageRouteInfo>? children,
  }) : super(
    Buy_Page.name,
    args: BuyArgs(
      key: key,
      productModel: productModel,
    ),
    initialChildren: children,
  );

  static const String name = 'Buy_Page';

  static const PageInfo<BuyArgs> page = PageInfo<BuyArgs>(name);
}

class BuyArgs {
  const BuyArgs({
    this.key,
    required this.productModel,
  });

  final Key? key;

  final ProductModel productModel;

  @override
  String toString() {
    return 'BuyArgs{key: $key, productModel: $productModel}';
  }
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
/// [Bottom_Nav]
class Bottom_Nav extends PageRouteInfo<void> {
  const Bottom_Nav({List<PageRouteInfo>? children})
      : super(
    Bottom_Nav.name,
    initialChildren: children,
  );

  static const String name = 'Bottom_Nav';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Profile_Page]
class Profile_Page extends PageRouteInfo<ProfileArgs> {
  Profile_Page({
    required Model model,
    List<PageRouteInfo>? children,
  }) : super(
    Profile_Page.name,
    args: ProfileArgs(model: model),
    initialChildren: children,
  );

  static const String name = 'Profile_Page';

  static const PageInfo<ProfileArgs> page = PageInfo<ProfileArgs>(name);
}

class ProfileArgs {
  const ProfileArgs({required this.model});

  final Model model;

  @override
  String toString() {
    return 'ProfileArgs{model: $model}';
  }
}
