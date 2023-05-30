import 'package:flutter/material.dart';
import 'package:mero_pasal/categories_widgets.dart';

import '../home_appbar.dart';
import '../itemwidgets.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            // height: 500,
            padding: EdgeInsets.only(top: 15.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35)),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 238, 238),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 5),
                          height: 50,
                          width: 500,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                color: Colors.black,
                              ),
                              prefixIcon: Icon(Icons.search),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.camera_alt),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 15.0, left: 15.0),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      color: Color(0xFF4C53A5),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                CategoriesWidgtes(),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Row(
                    children: [
                      Text(
                        'Best Selling',
                        style: TextStyle(
                          color: Color(0xFF4C53A5),
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                ItemWidgets(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
