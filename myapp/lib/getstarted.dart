import 'package:flutter/material.dart';
import 'dart:math';

import 'package:myapp/Widgets/slideAction.dart';
import 'package:myapp/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  final List<String> avatarImages = [
    "assets/images/1.webp",
    "assets/images/2.webp",
    "assets/images/3.webp",
    "assets/images/8.webp",
    "assets/images/5.webp",
    "assets/images/6.webp",
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5), // Full rotation in 5 seconds
    )..repeat(); // Infinite loop
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBE8FF),
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Stack(
          children: [
            _topContainer(),
            _animatedCircles(),
            _topTitle(),
            _getStartedButton(),
          ],
        ),
      ),
    );
  }

  Widget _topContainer() {
    return Positioned(
      top: -50,
      left: -50,
      child: Container(
        width: 150,
        height: 150,
        decoration: const BoxDecoration(
          color: Colors.yellow,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  Widget _topTitle() {
    return const Positioned(
      top: 150,
      left: 30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Start your journey",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "With some ice cream",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _animatedCircles() {
    return Positioned(
      top: 250,
      left: 0,
      right: 0,
      child: SizedBox(
        height: 300,
        child: Center(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Stack(
                children: [
                  for (var i = 0; i < avatarImages.length; i++)
                    _animatedCircle(i),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _animatedCircle(int index) {
    double angle = (index * pi / 3) +
        (_controller.value * 2 * pi); // Rotate images in a circle
    double radius = 110; // Radius of the circular motion

    return Positioned(
      left: 130 + radius * cos(angle), // X-position based on angle
      top: 110 + radius * sin(angle), // Y-position based on angle
      child: CircleAvatar(
        radius: 45,
        backgroundColor: Colors.purple[100],
        backgroundImage:
            AssetImage(avatarImages[index]), // Use Asset Image Here
      ),
    );
  }

  Widget _getStartedButton() {
    return Positioned(
      bottom: 50,
      left: 50,
      right: 50,
      child: ElevatedButton(
        onPressed: () {
          const slideaction(func: Product()).navigate(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.yellow,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        child: const Text(
          "Get Started",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
