import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:try_auto/Model/Model.dart';
import 'package:try_auto/Route/App_Route.dart';
import 'package:try_auto/Screens/Home_Page.dart';

@RoutePage()
class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        Home_Page(),
        AllProduct_Page(),
        Profile_Page(model: Model(' ', ' ', ' ', ' ')),
      ],
      builder: (context, child) {
        final tabrouter=AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                    backgroundColor: Colors.black,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  label: 'Product',
                  backgroundColor: Colors.black,
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_rounded),
                    label: 'profile',
                    backgroundColor: Colors.black,
                ),
              ],
              type: BottomNavigationBarType.shifting,
              currentIndex: tabrouter.activeIndex,
              selectedItemColor: Colors.white,
              iconSize: 40,
              onTap: (value) {
                tabrouter.setActiveIndex(value);
              },
              elevation: 5
          ),
        );
      },
    );
  }
}
