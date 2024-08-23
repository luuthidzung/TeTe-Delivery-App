import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tete_shop/components/my_cart_tile.dart';
import 'package:tete_shop/models/restaurant.dart';
import 'package:provider/provider.dart';
import 'package:tete_shop/components/my_button.dart';
import 'package:tete_shop/pages/payment_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        //cart

        final userCart = restaurant.cart;

        //UI

        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "Cart",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Color.fromARGB(0, 255, 0, 0),
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              //clear cart button
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                        title: Text("Are you sure you want to clear the cart?"),
                        actions: [
                          //cancel button
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Cancel"),
                          ),

                          //yes button
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              restaurant.clearCart();
                            },
                            child: const Text("Yes"),
                          )
                        ]),
                  );
                },
                icon: const Icon(Icons.delete),
              ),
            ],
            elevation: 0, // Làm cho AppBar trong suốt hoàn toàn
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
          ),

          // đổi màu background
          backgroundColor: Color.fromARGB(255, 249, 247, 247),
          body: Column(
            children: [
              // list of cart
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                            child: Center(child: Text("Cart is empty...")))
                        : Expanded(
                            child: ListView.builder(
                              itemCount: userCart.length,
                              // list title add to cart
                              itemBuilder: (context, index) {
                                // get indivisual cart item
                                final cartItem = userCart[index];
                                //return cart tile UI
                                return MyCartTile(cartItem: cartItem);
                              },
                            ),
                          ),
                  ],
                ),
              ),

              // button to pay
              MyButton(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentPage(),
                      )),
                  text: " Go to checkout!"),
              const SizedBox(
                height: 25,
              )
            ],
          ),
        );
      },
    );
  }
}
