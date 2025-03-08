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
            color: const Color.fromARGB(255, 243, 205, 91),
            padding: const EdgeInsets.only(
                top: 0, left: 10), // Padding for safe area
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back,
                      color: Colors.white, size: 28),
                ),
                const Spacer(),
                const Text(
                  "Log In",
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Spacer(),
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
              decoration: const BoxDecoration(
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
                    const Row(
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\n"
                          "sed do eiusmod tempor incididunt ut labore et dolore \n"
                          "magna aliqua",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Email or Mobile Number",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange.shade100, // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Rounded corners
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter Email or Mobile Number",
                          border: InputBorder.none, // No border
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15), // Height adjust
                        ),
                        style:
                            const TextStyle(fontSize: 16), // Text size adjust
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Password",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange.shade100, // Background color
                        borderRadius:
                            BorderRadius.circular(20), // Rounded corners
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Password",
                          border: InputBorder.none, // No border
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15), // Height adjust
                        ),
                        style:
                            const TextStyle(fontSize: 16), // Text size adjust
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forget Password",
                              style: TextStyle(
                                color: Color.fromARGB(255, 236, 106, 45),
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 236, 106, 45),
                        ),
                        child: Text(
                          "Log In",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("or sign up with")],
                    ),
                    const Row(
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
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Signupscreen()));
                            },
                            child: const Text(
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
