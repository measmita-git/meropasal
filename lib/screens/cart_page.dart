import 'package:flutter/material.dart';

import 'package:mero_pasal/cart_appbar.dart';
import 'package:mero_pasal/screens/cart_item_sample.dart';
import 'package:mero_pasal/screens/cartbuttom_nav_bar.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            // color: Color(0xFFEDECF2),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                CartItemSample(),
                Container(
                  margin: EdgeInsets.all(12),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Color(0xFF4C53A5),
                      ),
                      Text(
                        'Add Coupon Code',
                        style: TextStyle(
                          color: Color(0xFF4C53A5),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CartButtomNavBar(),
    );
  }
}
