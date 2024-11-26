import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // List of items in the shop
  final List<List<dynamic>> _shopItems = [
    ["Avocado", "4.00", "assets/Burger-and-Fries.jpg", Colors.green],
    ["Banana", "2.00", "assets/into.jpg", Colors.yellow],
    ["Coffee", "3.50", "assets/l-intro-1662064407.jpg", Colors.brown],
    ["Burger", "5.00", "assets/smoked-burgers-featured-image.jpg", Colors.blue],
  ];
  List _cartItems = [];

  // Getters for shop and cart items
  get shopItems => _shopItems;
  get cartItems => _cartItems;

  // Add item to cart
  void addItemTocart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // Remove item from cart
  void removeItemTocart(int index) {
    _cartItems.removeAt(index); // Fix: Use removeAt for proper removal
    notifyListeners();
  }

  // Calculate total price of items in the cart
  String calculatorTotal() {
    double totalprice = 0.0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalprice += double.parse(_cartItems[i][1]);
    }
    return totalprice.toStringAsFixed(1);
  }
}
