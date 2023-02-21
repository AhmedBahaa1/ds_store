import 'package:ds_stores/helper/constants.dart';
import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: appColor,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Cart',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: appColor,
            ),
          ),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert,color: appColor,))
        ],
      ),
    );
  }
}
