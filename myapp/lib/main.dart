import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:myapp/Loginin_view.dart';
import 'package:myapp/product.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Product(),
    );
  }
}
