import 'package:flutter/material.dart';
import 'package:myapp3/counterapp.dart';
import 'package:myapp3/widgets/productsWeidgets.dart';

class Listofcounters extends StatelessWidget {
  const Listofcounters({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      drawer: Drawer(
        backgroundColor: Colors.amber,
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                "Fruits & Vegetables",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Card(
              color: Colors.amberAccent,
              child: ListTile(
                title: Center(
                  child: Text(
                    "  Home",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Listofcounters()),
                  );
                },
              ),
            ),
            Card(
              color: Colors.amberAccent,
              child: ListTile(
                title: Center(
                  child: Text(
                    "  Account",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                onTap: () {},
              ),
            ),
            Card(
              color: Colors.amberAccent,
              child: ListTile(
                title: Center(
                  child: Text(
                    "  Counter",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Counterapp()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.amber,
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/anas.webp"),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Fruits  & ",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "vegetables",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                height: 160,
                width: 350,
                child: ClipRRect(
                  child: Image.asset(
                    "assets/images/banner.webp",
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "All",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Fruits",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Vegetables",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Salat",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              homeWed(),
            ],
          ),
        ),
      ),
    );
  }
}
