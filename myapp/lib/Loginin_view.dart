import 'package:flutter/material.dart';
import 'package:myapp/Signup_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.webp"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              width: 300,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                        fontSize: 16,
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                        fontSize: 16,
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print("Welcome To Anas Login Page");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, _createSlideRoute());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                      ),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Route _createSlideRoute() {
  return PageRouteBuilder(
    transitionDuration:
        const Duration(seconds: 2), // Slow transition (2 seconds)
    pageBuilder: (context, animation, secondaryAnimation) => const SignupView(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // Slide Animation (Back to Front)
      var slideTween = Tween<Offset>(
        begin: const Offset(1.0, 0.0), // Start from right (off-screen)
        end: Offset.zero, // End at center (normal position)
      ).chain(CurveTween(curve: Curves.easeInOut));

      return SlideTransition(
        position: animation.drive(slideTween),
        child: child,
      );
    },
  );
}
