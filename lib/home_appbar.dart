import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.sort,
            size: 30,
          ),
          Padding(padding: EdgeInsets.only(left: 20.0)),
          Text(
            'Mero Pasal',
            style: TextStyle(
              color: Color(0xFF4C53A5),
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: badges.Badge(
              badgeStyle: badges.BadgeStyle(padding: EdgeInsets.all(6.0)),
              badgeContent: Text('3'),
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                  color: Color(0xFF4C53A5),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
