import 'package:flutter/material.dart';
import 'package:tete_shop/models/food.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  const QuantitySelector({
    super.key,
    required this.quantity,
    required this.food,
    required this.onDecrement,
    required this.onIncrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(50),
        ),
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
//btn -
            GestureDetector(
              onTap: onDecrement,
              child: Icon(
                Icons.remove,
                size: 15,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),

            //quantity count
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: SizedBox(
                  width: 20,
                  child: Center(
                    child: Text(
                      quantity.toString(),
                    ),
                  ),
                )),

            //increade button

            GestureDetector(
              onTap: onIncrement,
              child: const Icon(
                Icons.add,
                size: 20,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ],
        ));
  }
}
