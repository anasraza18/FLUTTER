import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Anas"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: 230,
            width: 390,
          ),
          Container(
            color: Colors.blue,
            height: 230,
            width: 390,
          ),
          Container(
            color: Colors.green,
            height: 230,
            width: 390,
          ),
        ],
      ),
    );
  }
}
