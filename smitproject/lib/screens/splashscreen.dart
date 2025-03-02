import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smitproject/screens/authentication/loginscreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Loginscreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 205, 91),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 243, 205, 91),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              color: const Color.fromARGB(255, 243, 205, 91),
              child: Image.asset("assets/images/splash.png"),
            ),
          )
        ],
      ),
    );
  }
}
