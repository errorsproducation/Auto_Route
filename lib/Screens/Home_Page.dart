
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:try_auto/Model/Model.dart';
import 'package:try_auto/Route/App_Route.dart';
import 'package:try_auto/Screens/Profile_Page.dart';

@RoutePage()
class Home extends StatelessWidget {


  final _Name=TextEditingController();
  final _Place=TextEditingController();
  final _Degree=TextEditingController();
  final _Phone=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 70,
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: _Name,
                decoration: InputDecoration(
                  hintText: 'Name',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: _Place,
                decoration: InputDecoration(
                  hintText: 'Place',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: _Degree,
                decoration: InputDecoration(
                  hintText: 'Degree',
                ),
              ),
            ),

            Container(
              width: double.infinity,
              height: 70,
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: _Phone,
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                ),
              ),
            ),
            
            MaterialButton(
              onPressed: () {
              Model m=Model(_Name.text.toString(), _Place.text.toString(), _Degree.text.toString(), _Phone.text.toString());
              context.router.push(Profile_Page(model: m));
            },
            color: Colors.blue,
              child: Text("SEND"),
            ),

          ],
        ),
      ),
    );
  }
}
