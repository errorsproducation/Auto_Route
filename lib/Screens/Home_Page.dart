
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Home"),),
    );
  }
}
