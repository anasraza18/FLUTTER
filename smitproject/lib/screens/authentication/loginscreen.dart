import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        // Ensures Stack takes full screen height
        child: Stack(
          children: [
            // Top Yellow Bar with Back Button
            Container(
              height: 200,
              width: double.infinity, // Responsive width
              color: const Color.fromARGB(255, 243, 205, 91),
              padding:
                  EdgeInsets.only(top: 0, left: 10), // Padding for safe area
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
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Spacer(),
                ],
              ),
            ),

            // Black Container (Moved Up & Height Fixed)
            Positioned(
              top: 180, // Move slightly up to overlap
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
                  padding: const EdgeInsets.only(top: 30, right: 30, left: 35),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Welcome",
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
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
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(255, 236, 106, 45),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.dining_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.note_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.headphones_outlined), label: ""),
          ],
        ),
      ),
    );
  }
}
