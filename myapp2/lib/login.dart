import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final ValueNotifier<bool> isChecked = ValueNotifier(false);
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFF0E1),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFFFFF0E1),
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "Ice Shop",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ValueListenableBuilder<bool>(
                    valueListenable: isChecked,
                    builder: (context, value, child) {
                      return Row(
                        children: [
                          Checkbox(
                            value: value,
                            onChanged: (bool? newValue) {
                              isChecked.value =
                                  newValue!; // Updating ValueNotifier
                            },
                          ),
                          Text("Remember Me"),
                        ],
                      );
                    },
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Forgot Password ?"),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: Size(200, 50),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {},
                    child: Text("Sign Up"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
