import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginScreen'),
      ),
      body: Container(
        margin: EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome Back',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 40.0,
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              'Sign to continue',
              style: TextStyle(
                color: Color.fromARGB(255, 138, 202, 231),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 370.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Enter your email address',
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 370.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
            Text(
              'Forgot Password?',
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(10.0),
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text("Don't have an Account?"),
                    TextButton(
                      onPressed: () {},
                      child: Text("create a new account"),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
