import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:try_auto/Model/Product_Model.dart';
@RoutePage()
class Buy extends StatelessWidget {


  final ProductModel productModel;

  const Buy({super.key, required this.productModel});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
            width: 200,
            height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage('${productModel.IMAGE_URL}')),
              ),
            ),

            Text("Product name : ${productModel.NAME}"),
            SizedBox(height: 10,),
            Text("Product Price : ${productModel.PRICE}"),
            SizedBox(height: 10,),
            Text("Product Description : ${productModel.DESCRIPTION}"),
            SizedBox(height: 10,),
            Text("Product Rating : ${productModel.RATING}"),
            SizedBox(height: 10,),


          ],
        ),
      ),
    );
  }
}
