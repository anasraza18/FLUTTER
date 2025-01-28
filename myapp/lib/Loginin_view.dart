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
      body: Center(
        child: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Container(
                  color: Colors.red,
                  height: 700,
                  width: 130,
                ),
                Container(
                  color: Colors.blue,
                  height: 700,
                  width: 260,
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
