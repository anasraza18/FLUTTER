import 'package:flutter/material.dart';
import 'package:myapp2/Widgets/productsWidg.dart';

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
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.arrow_back)),
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
                          color: const Color.fromARGB(255, 209, 137, 110),
                          borderRadius: BorderRadius.circular(20),
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
                          borderRadius: BorderRadius.circular(20),
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
                          borderRadius: BorderRadius.circular(20),
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
                          borderRadius: BorderRadius.circular(20),
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
    );
  }
}
