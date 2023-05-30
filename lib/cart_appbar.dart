import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Color(0xFF4C53A5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Cart',
              style: TextStyle(
                color: Color(0xFF4C53A5),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          Icon(
            Icons.more_vert,
            color: Color(0xFF4C53A5),
            size: 30,
          ),
        ],
      ),
    );
  }
}
