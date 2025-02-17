import 'package:flutter/material.dart';
import 'package:myapp4/cart_provider.dart';
import 'package:myapp4/screens/products_gridview_screen/product_grid_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: const MyApp(),
    ),
  );
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
