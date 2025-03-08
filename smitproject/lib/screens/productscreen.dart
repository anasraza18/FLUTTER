import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:smitproject/screens/authentication/loginscreen.dart';
import 'package:smitproject/widgets/bestseller.dart';
import 'package:smitproject/widgets/catogorywidget.dart';
import 'package:smitproject/widgets/recommendwidget.dart';
import 'package:smitproject/widgets/sliderwidget.dart';

class Productscreen extends StatefulWidget {
  const Productscreen({super.key});

  @override
  State<Productscreen> createState() => _ProductscreenState();
}

class _ProductscreenState extends State<Productscreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: const Color.fromARGB(255, 243, 205, 91),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 70, right: 5, left: 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 30,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Search",
                              border: InputBorder.none,
                              suffixIcon: Icon(
                                LucideIcons.listFilter,
                                color: Color.fromARGB(255, 236, 106, 45),
                              ),
                            ),
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: IconButton(
                            icon: const Icon(Icons.shopping_bag_outlined,
                                color: Color.fromARGB(255, 236, 106, 45)),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: IconButton(
                            icon: const Icon(
                                Icons.notifications_active_outlined,
                                color: Color.fromARGB(255, 236, 106, 45)),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: IconButton(
                            icon: const Icon(Icons.person_2_outlined,
                                color: Color.fromARGB(255, 236, 106, 45)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Loginscreen()));
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Good Morning",
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Rise And Shine! It's Breakfast Time",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 236, 106, 45)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Catogorywidget(), //cotagory widget
                        Bestseller(), // best seller widget
                        Sliderwidget(),
                        Recommendwidget(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
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
