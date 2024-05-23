
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../Model/Model.dart';
@RoutePage()
class Profile extends StatelessWidget {
  final  Model model;


   Profile({required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:  CrossAxisAlignment.center,
          children: [
            Text(" Name        : ${model.NAME}"),
            Text(" Place       : ${model.PLACE}"),
            Text("Phone Number : ${model.PHONE_NUMBER}"),
            Text("Degree       : ${model.DEGREE}"),
          ],
        ),
      ),
    );
  }
}
