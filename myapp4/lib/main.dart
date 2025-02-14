import 'package:flutter/material.dart';
import 'package:myapp4/screens/product_grid_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductGridScreen(),
    );
  }
}
