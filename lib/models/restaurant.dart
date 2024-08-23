import 'package:flutter/material.dart';
import 'package:tete_shop/models/cart_item.dart';
import 'package:collection/collection.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu = [
    //kimbap
    Food(
        name: "Kimbap Tofu",
        description: "Feel free to adjust the description to suit your needs",
        imagePath: "lib/image/kimbap/kim1.jpg",
        price: 5,
        category: FoodCategory.Kimbap,
        availableAddons: [
          Addon(name: "Extra tofu", price: 2),
          Addon(name: "Extra rice", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
          Addon(name: "Extra cucumber", price: 0.5),
        ]),
    Food(
        name: "Kimbap Seaweed",
        description: "Feel free to adjust the description to suit your needs",
        imagePath: "lib/image/kimbap/kim2.jpg",
        price: 5,
        category: FoodCategory.Kimbap,
        availableAddons: [
          Addon(name: "Extra Seaweed", price: 2),
          Addon(name: "Extra rice", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
        ]),

    Food(
        name: "Kimbap Octopus",
        description: "Feel free to adjust the description to suit your needs",
        imagePath: "lib/image/kimbap/kim3.jpg",
        price: 5,
        category: FoodCategory.Kimbap,
        availableAddons: [
          Addon(name: "Extra Octopus", price: 2),
          Addon(name: "Extra rice", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
        ]),
    Food(
        name: "Kimbap Tuna",
        description: "Feel free to adjust the description to suit your needs",
        imagePath: "lib/image/kimbap/kim3.jpg",
        price: 5,
        category: FoodCategory.Kimbap,
        availableAddons: [
          Addon(name: "Extra Tuna", price: 2),
          Addon(name: "Extra rice", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
        ]),
    Food(
        name: "Kimbap Tuna",
        description: "Feel free to adjust the description to suit your needs",
        imagePath: "lib/image/kimbap/kim3.jpg",
        price: 5,
        category: FoodCategory.Kimbap,
        availableAddons: [
          Addon(name: "Extra Tuna", price: 2),
          Addon(name: "Extra rice", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
        ]),
    Food(
        name: "Kimbap Tofu",
        description: "Feel free to adjust the description to suit your needs",
        imagePath: "lib/image/kimbap/kim1.jpg",
        price: 5,
        category: FoodCategory.Kimbap,
        availableAddons: [
          Addon(name: "Extra Tuna", price: 2),
          Addon(name: "Extra rice", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
        ]),
    Food(
        name: "Kimbap seaweed",
        description: "Feel free to adjust the description to suit your needs",
        imagePath: "lib/image/kimbap/kim2.jpg",
        price: 5,
        category: FoodCategory.Kimbap,
        availableAddons: [
          Addon(name: "Extra Tuna", price: 2),
          Addon(name: "Extra rice", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
        ]),

    ////////////tokbokki
    Food(
        name: "Tokbokki Mala",
        description: "Feel free to adjust the description to suit your needs",
        imagePath: "lib/image/tokbokki/tok1.jpg",
        price: 5,
        category: FoodCategory.Tokbokki,
        availableAddons: [
          Addon(name: "Extra Mala", price: 2),
          Addon(name: "Extra tok", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
        ]),

    Food(
        name: "Tokbokki Chirsmast",
        description: "Feel free to adjust the description to suit your needs",
        imagePath: "lib/image/tokbokki/tok2.jpg",
        price: 5,
        category: FoodCategory.Tokbokki,
        availableAddons: [
          Addon(name: "Extra Happy", price: 2),
          Addon(name: "Extra Tok", price: 1),
          Addon(name: "Extra Sauce", price: 0.5),
        ]),
    Food(
        name: "Tokbokki Black",
        description: "Feel free to adjust the description to suit your needs",
        imagePath: "lib/image/tokbokki/tok3.jpg",
        price: 5,
        category: FoodCategory.Tokbokki,
        availableAddons: [
          Addon(name: "Extra Black", price: 2),
          Addon(name: "Extra Tok", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
        ]),
    Food(
        name: "Tokbokki Spicy",
        description: "Feel free to adjust the description to suit your needs",
        imagePath: "lib/image/tokbokki/tok4.jpg",
        price: 5,
        category: FoodCategory.Tokbokki,
        availableAddons: [
          Addon(name: "Extra Spicy", price: 2),
          Addon(name: "Extra tok", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
        ]),

    Food(
        name: "Tokbokki Rose",
        description: "Feel free to adjust the description to suit your needs",
        imagePath: "lib/image/tokbokki/tok5.jpg",
        price: 5,
        category: FoodCategory.Tokbokki,
        availableAddons: [
          Addon(name: "Extra Tuna", price: 2),
          Addon(name: "Extra rice", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
        ]),

    Food(
        name: "Tokbokki Chirsmast",
        description: "Feel free to adjust the description to suit your needs",
        imagePath: "lib/image/tokbokki/tok2.jpg",
        price: 5,
        category: FoodCategory.Tokbokki,
        availableAddons: [
          Addon(name: "Extra Tuna", price: 2),
          Addon(name: "Extra rice", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
        ]),
    Food(
        name: "Tokbokki Black",
        description: "Feel free to adjust the description to suit your needs",
        imagePath: "lib/image/tokbokki/tok3.jpg",
        price: 5,
        category: FoodCategory.Tokbokki,
        availableAddons: [
          Addon(name: "Extra Tuna", price: 2),
          Addon(name: "Extra rice", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
        ]),
    Food(
        name: "Tokbokki Spicy",
        description: "Feel free to adjust the description to suit your needs",
        imagePath: "lib/image/tokbokki/tok4.jpg",
        price: 5,
        category: FoodCategory.Tokbokki,
        availableAddons: [
          Addon(name: "Extra Tuna", price: 2),
          Addon(name: "Extra rice", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
        ]),

    Food(
        name: "Tokbokki Rose",
        description: "Feel free to adjust the description to suit your needs",
        imagePath: "lib/image/tokbokki/tok5.jpg",
        price: 5,
        category: FoodCategory.Tokbokki,
        availableAddons: [
          Addon(name: "Extra Tuna", price: 2),
          Addon(name: "Extra rice", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
        ]),

    //noodle
    Food(
        name: "Jjolmyon",
        description: "Feel free to adjust the description to suit your needs",
        imagePath: "lib/image/noodle/mi1.jpg",
        price: 5,
        category: FoodCategory.Noodle,
        availableAddons: [
          Addon(name: "Extra Happy", price: 2),
          Addon(name: "Extra Jjolmyon", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
        ]),

    Food(
        name: "Mỳ kiều mạch sốt BTS",
        description: "Feel free to adjust the description to suit your needs",
        imagePath: "lib/image/noodle/mi2.jpg",
        price: 5,
        category: FoodCategory.Noodle,
        availableAddons: [
          Addon(name: "Extra BTS", price: 2),
          Addon(name: "Extra mì", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
        ]),
    Food(
        name: "Black noodle",
        description: "Feel free to adjust the description to suit your needs",
        imagePath: "lib/image/noodle/mi3.jpg",
        price: 5,
        category: FoodCategory.Noodle,
        availableAddons: [
          Addon(name: "Extra Tuna", price: 2),
          Addon(name: "Extra rice", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
        ]),
    Food(
        name: "Tokbokki",
        description: "Feel free to adjust the description to suit your needs",
        imagePath: "lib/image/noodle/mi4.jpg",
        price: 5,
        category: FoodCategory.Noodle,
        availableAddons: [
          Addon(name: "Extra Tuna", price: 2),
          Addon(name: "Extra rice", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
        ]),

    Food(
        name: "Tokbokki",
        description: "Feel free to adjust the description to suit your needs",
        imagePath: "lib/image/noodle/mi5.jpg",
        price: 5,
        category: FoodCategory.Noodle,
        availableAddons: [
          Addon(name: "Extra Tuna", price: 2),
          Addon(name: "Extra rice", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
        ]),

    //rice
    Food(
        name: "Kimbap Tuna",
        description: "123456",
        imagePath: "lib/image/kimbap/kimbap1",
        price: 5,
        category: FoodCategory.Rice,
        availableAddons: [
          Addon(name: "Extra Tuna", price: 2),
          Addon(name: "Extra rice", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
        ]),

    //salad
    Food(
        name: "Kimbap Tuna",
        description: "123456",
        imagePath: "lib/image/kimbap/kimbap1",
        price: 5,
        category: FoodCategory.Salad,
        availableAddons: [
          Addon(name: "Extra Tuna", price: 2),
          Addon(name: "Extra rice", price: 1),
          Addon(name: "Extra sauce", price: 0.5),
        ]),
  ];

/*getter*/
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

/*
Operation
*/
// user cart
  final List<CartItem> _cart = [];

//add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
//see if there is a cart item already with the same food and selected addons

    CartItem? cartItem = _cart.firstWhereOrNull((item) {
//check if food items are the same
      bool isSameFood = item.food == food;

//check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });
// if item already exist
    if (cartItem != null) {
      cartItem.quantity++;
      // otherwise, add a new cart item to the cart
    } else {
      _cart.add(
        CartItem(food: food, selectedAddons: selectedAddons),
      );
    }
    notifyListeners();
  }

//remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

// get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }
// get total number of item

  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

//clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
}
