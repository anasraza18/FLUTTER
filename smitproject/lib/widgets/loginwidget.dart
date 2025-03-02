import 'package:flutter/material.dart';
import 'package:smitproject/screens/authentication/signupscreen.dart';

class Loginwidget extends StatefulWidget {
  const Loginwidget({super.key});

  @override
  State<Loginwidget> createState() => _LoginwidgetState();
}

class _LoginwidgetState extends State<Loginwidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      // Ensures Stack takes full screen height
      child: Stack(
        children: [
          // Top Yellow Bar with Back Button
          Container(
            height: 200,
            width: double.infinity, // Responsive width
            color: Color.fromARGB(255, 243, 205, 91),
            padding: EdgeInsets.only(top: 0, left: 10), // Padding for safe area
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.white, size: 28),
                ),
                Spacer(),
                Text(
                  "Log In",
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Spacer(),
              ],
            ),
          ),

          // Black Container (Moved Up & Height Fixed)
          Positioned(
            top: 160, // Move slightly up to overlap
            left: 0,
            right: 0,
            bottom: 0, // Ensures it fills the remaining space
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 30, left: 35),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\n"
                          "sed do eiusmod tempor incididunt ut labore et dolore \n"
                          "magna aliqua",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Email or Mobile Number",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Email or Mobile Number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        fillColor: Colors.orange,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Password",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        fillColor: Colors.orange,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forget Password",
                              style: TextStyle(
                                color: Color.fromARGB(255, 236, 106, 45),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Log In",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 236, 106, 45),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("or sign up with")],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook_outlined,
                          color: Color.fromARGB(255, 236, 106, 45),
                        ),
                        Icon(
                          Icons.facebook_outlined,
                          color: Color.fromARGB(255, 236, 106, 45),
                        ),
                        Icon(
                          Icons.facebook_outlined,
                          color: Color.fromARGB(255, 236, 106, 45),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Signupscreen()));
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 236, 106, 45)),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
