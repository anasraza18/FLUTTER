import 'package:flutter/material.dart';
//import 'package:myapp3/counterapp.dart';
import 'package:myapp3/listofcounters.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Listofcounters(),
    );
  }
}
