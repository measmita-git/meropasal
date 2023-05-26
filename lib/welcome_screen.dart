import 'package:flutter/material.dart';
import 'package:mero_pasal/screens/signup_screen.dart';

// import 'package:emoji_picker/emoji_picker.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 252, 253),
      body: Container(
        margin: EdgeInsets.all(80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Welcome!',
              style: TextStyle(
                color: Color(0xFF6A2FC1),
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(
              'assets/luck.jpg',
            ),
            TextButton(
              style: TextButton.styleFrom(
                elevation: 5,
                backgroundColor: Color(0xFF6A2FC1),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => SignUpScreen())));
              },
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
