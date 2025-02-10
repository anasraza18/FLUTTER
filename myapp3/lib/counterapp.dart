import 'package:flutter/material.dart';
import 'package:myapp3/counterWeidget.dart';

class Counterapp extends StatelessWidget {
  const Counterapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Counter App"),
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        color: Colors.black,
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "My Counter",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "First App",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Counterweidget(),
            ],
          ),
        ),
      ),
    );
  }
}
