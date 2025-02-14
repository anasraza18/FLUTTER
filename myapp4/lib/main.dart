import 'package:flutter/material.dart';
import 'package:myapp4/screens/products_gridview_screen/product_grid_screen.dart';

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
