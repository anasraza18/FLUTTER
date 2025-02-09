import 'package:flutter/material.dart';
import 'package:myapp2/Widgets/productsWidg.dart';
import 'package:myapp2/joinus.dart';

// ignore: must_be_immutable
class ProductList extends StatelessWidget {
  ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFF0E1),
        // title: Text(
        //   "Products",
        //   style: TextStyle(
        //       fontSize: 38, color: Colors.black, fontWeight: FontWeight.bold),
        // ),
        toolbarHeight: 10,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                // arrow back and circle avatar
                Container(
                  color: Color(0xFFFFF0E1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.all(3),
                        margin: EdgeInsets.all(15),
                        height: 40,
                        width: 40,
                        child: Center(
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.arrow_back)),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(3),
                        margin: EdgeInsets.all(15),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/anas.jpg'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // serach bar
            Container(
              color: Color(0xFFFFF0E1),
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(Icons.search),
                    labelText: "Search"),
              ),
            ),
            // large main image
            Container(
              color: Color(0xFFFFF0E1),
              padding: EdgeInsets.all(13),
              child: ClipRRect(
                child: Image.asset(
                  'assets/images/23.webp',
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              width: 360,
              height: 200,
            ),
            Column(
              children: [
                Container(
                  color: Color(0xFFFFF0E1),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 228, 175, 156),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 40,
                        width: 50,
                        child: Center(
                          child: Text(
                            "All",
                            style: TextStyle(),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Center(child: Text("Ice Cube")),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Center(child: Text("Cones")),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Center(child: Text("Shakes")),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // grid view
            Container(
              color: Color(0xFFFFF0E1),
              child: Productswidg(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            if (index == 0) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Joinus()));
            } else if (index == 1) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Joinus()));
            } else if (index == 2) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Joinus()));
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: "Discords",
            ),
          ],
        ),
      ),
    );
  }
}
