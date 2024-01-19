import 'package:flutter/material.dart';
import 'package:flutter_sneakers/components/cart_item.dart';
import 'package:flutter_sneakers/models/cart.dart';
import 'package:flutter_sneakers/models/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Cart",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: ListView.builder(
                itemCount: value.getCart().length,
                itemBuilder: (context, index) {
                  // get individual shoe
                  Shoe individualShoe = value.getCart()[index];

                  // return the cart item
                  return CartItem(shoe: individualShoe);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
