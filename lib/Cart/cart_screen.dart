import 'package:ds_stores/Cart/cart_app_bar.dart';
import 'package:ds_stores/Cart/cart_item_samples.dart';
import 'package:ds_stores/helper/constants.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,

      // ),
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            height: 700,
            decoration: BoxDecoration(
              color: contColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [CartItemSamples()],
            ),
          )
        ],
      ),
    );
  }
}
