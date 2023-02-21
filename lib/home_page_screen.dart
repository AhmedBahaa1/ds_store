import 'package:ds_stores/Item_widgets.dart';
import 'package:ds_stores/categories_widgets.dart';
import 'package:ds_stores/helper/constants.dart';
import 'package:ds_stores/home_app_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
          children: [

        HomeAppBar(),
        Container(
          // height: 450,
          decoration: BoxDecoration(
              color: HexColor('#EDECF2'),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35),),
          ),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 16,left: 20,right: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30),),
                ),
                child: Row(children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 280,
                    height: 50,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search here....'
                      ),
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt,color:appColor ,),),

                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text('Categories',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: appColor,),),
              ),
            ),
            CategoriesWidgets(),
            Padding(
              padding: const EdgeInsets.only(top: 10,right: 20,left: 20,bottom: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text('Best Selling',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: appColor,),),
              ),
            ),
            ItemWidget(),

          ]),
        ),

      ]),
    );
  }
}
