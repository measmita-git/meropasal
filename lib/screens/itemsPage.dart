import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mero_pasal/screens/itemAppBar.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:clippy_flutter/arc.dart';

List<Color> clrs = [
  Colors.red,
  Colors.blue,
  Colors.indigo,
  Colors.yellow,
  Colors.green,
];

class ItemsPage extends StatelessWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          ItemAppBar(),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset(
                    'assets/1.png',
                    height: 300,
                  ),
                ),
                Arc(
                  edge: Edge.TOP,
                  arcType: ArcType.CONVEY,
                  height: 40.0,
                  child: Container(
                    color: Colors.grey,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 50, bottom: 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Text(
                                    'Product Title',
                                    style: TextStyle(
                                      color: Color(0xFF4C53A5),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                maxRating: 5,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  CupertinoIcons.heart,
                                  // size: 8,
                                  color: Color(0xFF4C53A5),
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.red.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  CupertinoIcons.minus,
                                  size: 20,
                                  color: Color(0xFF4C53A5),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.red.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  CupertinoIcons.add,
                                  size: 20,
                                  color: Color(0xFF4C53A5),
                                ),
                              )
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10, bottom: 8),
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "a low-cut shoe that fastens by an ankle strap. 3. : a strap to hold on a slipper or low shoe. 4. : a rubber overshoe cut very low.",
                              style: TextStyle(
                                color: Color(
                                  0xFF4C53AF,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Size:',
                                  style: TextStyle(
                                    color: Color(0xFF4C53A5),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  for (int i = 5; i < 10; i++)
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(40),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.red.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      child: Text(i.toString()),
                                    ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Color:',
                                  style: TextStyle(
                                    color: Color(0xFF4C53A5),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  for (int i = 0; i < 5; i++)
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: clrs[i],
                                        borderRadius: BorderRadius.circular(40),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.red.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      child: Text(''),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
