import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle =
        TextStyle(color: Color.fromARGB(255, 255, 157, 150));
    var mySecondaryTextStyle =
        TextStyle(color: Color.fromARGB(255, 255, 157, 150));

    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 239, 175, 175)),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //delivery fee
            Column(
              children: [
                Text('\$235'),
                Text("Delivery fee", style: myPrimaryTextStyle)
              ],
            ),

            //delivery time
            Column(
              children: [
                Text('15-30 mins'),
                Text("Delivery time", style: mySecondaryTextStyle)
              ],
            ),
          ],
        ));
  }
}
