import 'package:flutter/material.dart';

import 'package:mero_pasal/cart_appbar.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
        ],
      ),
    );
  }
}
