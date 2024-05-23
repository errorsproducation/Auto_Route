import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:try_auto/Model/Product_Model.dart';
import 'package:try_auto/Route/App_Route.dart';
import 'package:try_auto/Screens/Providers/Provider.dart';
@RoutePage()
class AllProduct extends ConsumerWidget {
  const AllProduct({super.key});


  @override
  Widget build(BuildContext context,WidgetRef ref) {


    final data=ref.watch(productdataprovider);
    return SafeArea(
      child: Scaffold(
        body: data.when(data: (data) {
          List<dynamic> list=data.map((e) => e).toList();
          print("list length ${list.length}");
          return Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  child: Card(
                    color: Colors.white,
                    shadowColor: Colors.grey,
                    child: Stack(
                      children: [
                        IconButton(onPressed: () {

                        }, icon:  Icon(Icons.shopping_cart,
                        ),
                        ),

                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("M",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.pinkAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("o",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),),
                              Text("B",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),),
                              Text("o",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),),
                              Text("o",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("M",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.pinkAccent,
                                  fontWeight: FontWeight.bold,
                                ),),

                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 0.65,
                    children: List.generate(list.length,(index){
                      return InkWell(
                        onTap: () {
                          context.router.push(Buy_Page(productModel: ProductModel(list[index]['title'], list[index]['price'].toString(), list[index]['description'], list[index]['rating'].toString(), list[index]['thumbnail'])));
                        },
                        onLongPress: () {

                        },
                        child: Container(

                          margin: EdgeInsets.all(05),
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: NetworkImage(list[index]['thumbnail']),
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                  ),
                                  width: 200,
                                  height: 150,
                                  child: Row(

                                    children: [


                                      InkWell(
                                        onTap:(){

                                        },
                                        child: Container(
                                          margin: EdgeInsets.all(10),
                                          width: 30,
                                          height: 30,
                                          color: Colors.grey.withOpacity(0.3),
                                          child: Center(
                                            child: Icon(

                                              size: 18,
                                              Icons.favorite_outline_rounded,
                                              color: Colors.white.withOpacity(0.6),
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                    crossAxisAlignment:  CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                  ),
                                ),


                                Expanded(

                                  child: Container(
                                    padding:  EdgeInsets.all(05),
                                    child: Column(



                                      children: [

                                        Align(
                                          child: Text(list[index]['title'],
                                            maxLines: 1,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                            ),
                                          ),
                                          alignment: Alignment.topLeft,

                                        ),
                                        Align(
                                          child: Text(list[index]['description'],
                                            maxLines: 2,
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10,
                                            ),
                                          ),
                                          alignment: Alignment.topLeft,

                                        ),
                                        Row(
                                          children: [

                                            Align(
                                              child: Text("\$ ${list[index]['price']}",
                                                maxLines: 1,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13,
                                                ),
                                              ),
                                              alignment: Alignment.topLeft,

                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Container(
                                              width: 70,
                                              height: 20,
                                              child:Center(
                                                child: Text(" ",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius: BorderRadius.circular(10),
                                              ),

                                            ),
                                          ],
                                        ),


                                        Align(
                                          child: Row(

                                            children: [

                                              RatingBar.builder(
                                                itemSize: 10,
                                                //initialRating: list[index]['rating'],
                                                minRating: 1,
                                                direction: Axis.horizontal,
                                                allowHalfRating: true,
                                                itemCount: 5,
                                                itemBuilder: (context, _) => Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ),
                                                onRatingUpdate: (rating) {
                                                  print(rating);
                                                },
                                              ),
                                              SizedBox(
                                                width: 05,
                                              ),
                                              Text("${list[index]['rating']}",
                                                maxLines: 1,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 9,
                                                ),
                                              ),

                                            ],
                                          ),
                                          alignment: Alignment.topLeft,

                                        ),



                                      ],

                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    ),
                                  ),
                                ),



                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          );
        }, error: (error, stackTrace) {
          Text("${error.toString()}");
        }, loading: () => CircularProgressIndicator(),),
      ),
    );
  }
}
