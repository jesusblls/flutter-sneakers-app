import 'package:flutter/material.dart';
import 'package:flutter_sneakers/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Air force 1",
      image: "lib/images/1.webp",
      price: "120",
      description: "The best shoe",
    ),
    Shoe(
      name: "Air force 2",
      image: "lib/images/2.jpeg",
      price: "233",
      description: "Most popular shoe",
    ),
    Shoe(
      name: "Air force 3",
      image: "lib/images/3.webp",
      price: "111",
      description: "Incredible design",
    ),
    Shoe(
      name: "Air force 4",
      image: "lib/images/4.webp",
      price: "231",
      description: "Good price",
    ),
    Shoe(
      name: "Air force 5",
      image: "lib/images/5.jpeg",
      price: "77",
      description: "This is the most expensive shoe",
    ),
  ];

  // list of shoes in cart
  List<Shoe> cart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getCart() {
    return cart;
  }

  // add items to cart
  void addToCart(Shoe shoe) {
    cart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeFromCart(Shoe shoe) {
    cart.remove(shoe);
    notifyListeners();
  }
}
