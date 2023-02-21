
import 'package:ds_stores/helper/constants.dart';
import 'package:flutter/material.dart';
class CategoriesWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),

      scrollDirection: Axis.horizontal,
      child: Row(children: [
        for(int i=1 ; i < 8 ; i++)
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                Image.asset('images/${i}.png',width: 50,height: 50,),
                    Text('Sandel',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: appColor),),
              ]),
            ),
          ),
        ),

      ]),
    );
  }
}
