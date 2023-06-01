import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget {
  const ItemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      height: 70,
      child: Row(
        children: [
          Icon(
            Icons.arrow_back,
            color: Color(0xFF4C53A5),
            size: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ),
            child: Text(
              'Product',
              style: TextStyle(
                color: Color(0xFF4C53A5),
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(
              CupertinoIcons.heart_fill,
              size: 30,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
