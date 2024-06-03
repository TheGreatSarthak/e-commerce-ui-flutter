import 'package:ecommerce_flutter/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  //products for sale
  final List<Product> _shop = [
    Product(
      name: "Lymio Hoodie",
      price: 799,
      description: "Women Hoodies || Sweatshirt for Unisex || Unisex Hoodie",
      imagePath: "lib/assets/hoodie.jpg",
    ),
    Product(
      name: "Apple Watch SE (2nd Gen)",
      price: 32900,
      description:
          "All the essentials to help you monitor your fitness, keep connected, track your health and stay safe. Now up to 20% faster, with features like Crash Detection and enhanced workout metrics, it’s a better value than ever.",
      imagePath: "lib/assets/watch.jpg",
    ),
    Product(
      name: "Marvel Deadpool Black Cotton T-Shirt",
      price: 599,
      description:
          "All T-shirts are made using lightweight premium-quality cotton (180GSM) that makes the T-shirt super-soft and comfortable to wear all day long.",
      imagePath: "lib/assets/tshirt.jpg",
    ),
    Product(
      name: "Stretch Fit Baseball Cap",
      price: 349,
      description:
          "Made with the finest quality soft touch poly-cotton breathable fabric for highest comfort and sweat absorption. DYNA-FLEX ELASTIC BAND- Our unique DynaFlex elastic band ensures that the cap fits snugly on your head.",
      imagePath: "lib/assets/cap.jpg",
    ),
  ];

  //user cart
  final List<Product> _cart = [];

  //get product cart
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  //add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
