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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.green,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.purple,
                width: 100,
                height: 100,
              ),
            ],
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}
