//import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  // coffee for sale list
  final List<Coffee> _shop = [
    // black coffee
    Coffee(
      name: 'Long Black',
      price: "4.10",
      imagePath: 'lib/images/black.png',
    ),
    // tea
    Coffee(
      name: 'Tea',
      price: "3.70",
      imagePath: 'lib/images/tea.png',
    ),

    // espresso
    Coffee(
      name: 'Espresso',
      price: "3.50",
      imagePath: 'lib/images/espresso.png',
    ),

    // iced coffed
    Coffee(
      name: 'Iced Coffee',
      price: "5.60",
      imagePath: 'lib/images/ice_coffee.png',
    ),
  ];

  // user cart
  List<Coffee> _userCart = [];

  // get coffee list
  List<Coffee> get coffeeShop => _shop;

  // get user cart
  List<Coffee> get userCart => _userCart;

  

  // add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
