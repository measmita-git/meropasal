import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mero_pasal/screens/itemAppBar.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4C53A5),
      body: ListView(
        children: [
          ItemAppBar(),
        ],
      ),
    );
  }
}
