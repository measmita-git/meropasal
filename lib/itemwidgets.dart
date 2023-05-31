import 'package:flutter/material.dart';

class ItemWidgets extends StatelessWidget {
  const ItemWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      physics: NeverScrollableScrollPhysics(),
      childAspectRatio: 0.9,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 8; i++)
          Container(
            padding: EdgeInsets.all(6),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(26, 194, 164, 164),
            ),
            child: Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFF4C53A5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text('-50%'),
                    ),
                    Spacer(),
                    Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.red,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/ItemPage');
                  },
                  child: Image.asset(
                    'assets/$i.png',
                    height: 130,
                    width: 180,
                  ),
                ),
                Container(
                  // padding: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Text(
                        'Product title',
                        style: TextStyle(
                          color: Color(0xFF4C53A5),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // padding: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Text(
                        'Write description about product',
                        style: TextStyle(
                          color: Color(0xFF4C53A5),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Text(
                        'MRP 2800',
                        style: TextStyle(
                          color: Color(0xFF4C53A5),
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.shopping_cart_outlined,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
