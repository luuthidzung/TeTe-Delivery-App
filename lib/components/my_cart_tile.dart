import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tete_shop/components/my_quantity_selector.dart';
import 'package:tete_shop/models/cart_item.dart';
import 'package:tete_shop/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 250, 162, 162),
            borderRadius: BorderRadius.circular(8),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // food image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        cartItem.food.imagePath,
                        height: 100,
                        width: 100,
                      ),
                    ),
                    const SizedBox(width: 10),
                    // name and price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //food name
                        Text(cartItem.food.name),
                        // food price
                        Text(
                          "\$" + cartItem.food.price.toString(),
                          style: const TextStyle(
                              color: Color.fromARGB(255, 112, 111, 111)),
                        )
                      ],
                    ),

                    const Spacer(),
                    // them bot san pham
                    QuantitySelector(
                        quantity: cartItem.quantity,
                        food: cartItem.food,
                        onDecrement: () {
                          restaurant.removeFromCart(cartItem);
                        },
                        onIncrement: () {
                          restaurant.addToCart(
                              cartItem.food, cartItem.selectedAddons);
                        })
                  ],
                ),
              ),

              //addons
              SizedBox(
                height: cartItem.selectedAddons.isEmpty ? 0 : 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding:
                      const EdgeInsets.only(left: 10, bottom: 10, right: 10),
                  children: cartItem.selectedAddons
                      .map(
                        (addon) => Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: FilterChip(
                            label: Row(
                              children: [
                                // addon name
                                Text(addon.name),
                                //addon price
                                Text(' (\$${addon.price}) '),
                              ],
                            ),
                            onSelected: (value) {},
                            backgroundColor:
                                const Color.fromARGB(255, 245, 241, 241),
                            labelStyle: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              )
            ],
          )),
    );
  }
}
