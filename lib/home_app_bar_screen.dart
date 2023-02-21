import 'package:ds_stores/helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart'as badges;
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          InkWell(
              onTap: () {
                print("object");
              },
              child: Icon(Icons.sort, size: 30, color: appColor,),
          ),
          SizedBox(width: 20,),
          Text('DS Store' , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: appColor,),),
          Spacer(),
          badges.Badge(
            badgeContent: Text('3',style: TextStyle(color: Colors.white),),

            child:InkWell(onTap: () {}, child: Icon(Icons.shopping_bag_outlined,size: 30,color:appColor ,),) ,
          ),


        ],
      ),
    );
  }
}
