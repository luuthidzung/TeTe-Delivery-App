import 'package:flutter/material.dart';
import '../models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const FoodTile({
    super.key,
    required this.food,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
// text food detail
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(food.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.red)),
                      Text(
                        '\$' + food.price.toString(),
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(food.description),
                    ]),
              ),
            ),
            // food image
            Padding(
              padding: const EdgeInsets.only(
                  right: 15.0, bottom: 15.0), // Cách phải 20 đơn vị
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  food.imagePath,
                  height: 120,
                  width: 150,
                ),
              ),
            ),
          ],
        ),
      ),
      const Divider(
        color: Colors.white,
        endIndent: 25,
        indent: 25,
      )
    ]);
  }
}
