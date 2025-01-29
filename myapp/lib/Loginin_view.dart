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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                //margin: EdgeInsets.all(10),
                //padding: EdgeInsets.all(10),
                color: Colors.red,
                width: 150,
                height: 150,
              ),
              Container(
                color: Colors.red,
                width: 150,
                height: 150,
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.red,
                width: 150,
                height: 150,
              ),
              Container(
                color: Colors.red,
                width: 150,
                height: 150,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
