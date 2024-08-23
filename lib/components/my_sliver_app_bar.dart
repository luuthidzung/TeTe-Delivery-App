import 'package:flutter/material.dart';
import 'package:tete_shop/pages/cart_page.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySliverAppBar({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 320,
      collapsedHeight: 80,
      floating: false,
      pinned: true,

//action
      actions: [
        //cartbtn
        IconButton(
          onPressed: () {
            // go to cart Page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CartPage(),
              ),
            );
          },
          icon: Icon(Icons.shopping_cart),
          color: const Color.fromARGB(255, 0, 0, 0),
        ),
      ],

      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Colors.black,
      centerTitle: true,
      title: const Text(
        "TeTe 안녕!",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
      ),
    );
  }
}
