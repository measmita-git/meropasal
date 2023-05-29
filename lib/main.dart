import 'package:flutter/material.dart';
import 'package:mero_pasal/home_appbar.dart';
import 'package:mero_pasal/screens/cart_page.dart';
import 'package:mero_pasal/screens/login_Screen.dart';
import 'package:mero_pasal/screens/product_screen.dart';
import 'package:mero_pasal/screens/signup_screen.dart';
import 'package:mero_pasal/welcome_screen.dart';

// import 'package:mero_pasal/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductScreen(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => WelcomeScreen(),
      //   '/second': (context) => SignUpScreen(),
      //   '/third': (context) => LoginScreen(),
      //   '/fourth': (context) => ProductScreen(),
      //   'fifth': (context) => CartPage(),
      // },
    );
  }
}
