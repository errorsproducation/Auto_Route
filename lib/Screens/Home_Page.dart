
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:try_auto/Route/App_Route.dart';
import 'package:try_auto/Screens/Profile_Page.dart';

@RoutePage()
class Home extends StatelessWidget {


  final _controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {

          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 70,
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: _controller,
                ),
              ),
              SizedBox(height: 20,),
              MaterialButton(
                child: Text('PRESS'),
                color: Colors.blue,
                onPressed: () {
                context.router.push(Profile_Page(message:'${_controller.text.toString()}'));
              },
              ),
            ],
          )),),
    );
  }
}
