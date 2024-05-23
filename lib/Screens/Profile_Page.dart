
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
@RoutePage()
class Profile extends StatelessWidget {
   String message=' ';


   Profile({@PathParam('message') required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: InkWell(
        onTap: () {
          context.router.pushNamed('/home');
        },
        child: Text("$message")),),
    );
  }
}
