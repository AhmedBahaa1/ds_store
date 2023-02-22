import 'package:ds_stores/helper/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItemSamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text('data'),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          height: 120,
          // width: double.infinity,
          child: Row(children: [
            Radio(
              value: "",
              groupValue: "",
              onChanged: (value) {},
              activeColor: appColor,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 70,
              width: 70,
              child: Image.asset('images/5.png'),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product Name',
                    style: TextStyle(
                      color: appColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '\$55',
                    style: TextStyle(
                        color: appColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Spacer(),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: Colors.redAccent,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        focusColor: Colors.red,
                        onPressed: () {
                          print('object');
                        },
                        icon: Icon(
                          CupertinoIcons.minus,
                          size: 18,
                        ),
                      ),
                      // Container(
                      //     margin: EdgeInsets.symmetric(horizontal: 10),
                      //     child: Text('0')),
                      IconButton(
                        focusColor: Colors.red,
                        onPressed: () {
                          print('object');
                        },
                        icon: Icon(
                          CupertinoIcons.plus,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ]),
          ]),
        ),
      ],
    );
  }
}
