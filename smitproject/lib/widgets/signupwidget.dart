import 'package:flutter/material.dart';
import 'package:smitproject/screens/authentication/loginscreen.dart';

class Signupwidget extends StatefulWidget {
  const Signupwidget({super.key});

  @override
  State<Signupwidget> createState() => _SignupwidgetState();
}

class _SignupwidgetState extends State<Signupwidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      // Ensures Stack takes full screen height
      child: Stack(
        children: [
          // Top Yellow Bar with Back Button
          Container(
            height: 160,
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
                  "Sign Up",
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
            top: 120, // Move slightly up to overlap
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Full Name",
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
                            hintText: "Full Name",
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
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Email",
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
                            hintText: "Enter Email",
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
                            "Mobile Number",
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
                            hintText: "Enter Mobile Number",
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
                            "Date of birth",
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
                            hintText: "Enter Date of birth",
                            border: InputBorder.none, // No border
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15), // Height adjust
                          ),
                          style:
                              const TextStyle(fontSize: 16), // Text size adjust
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .center, // Center alignment maintain karega
                        children: [
                          const Text(
                            "By conditions, you agree to",
                            style: TextStyle(fontSize: 14),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize
                                .min, // Row ka extra space hatane ke liye
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding:
                                      EdgeInsets.zero, // Default padding hataya
                                  minimumSize: const Size(
                                      0, 0), // Button ka extra size remove kiya
                                ),
                                child: const Text(
                                  "Terms of Use",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 236, 106, 45)),
                                ),
                              ),
                              const Text(
                                " and ",
                                style: TextStyle(fontSize: 14),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding:
                                      EdgeInsets.zero, // Default padding hataya
                                  minimumSize: const Size(
                                      0, 0), // Button ka extra size remove kiya
                                ),
                                child: const Text(
                                  "Privacy Policy",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 236, 106, 45)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 236, 106, 45),
                          ),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
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
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Have an account?"),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Loginscreen()));
                              },
                              child: const Text(
                                "Log In",
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
          ),
        ],
      ),
    );
  }
}
