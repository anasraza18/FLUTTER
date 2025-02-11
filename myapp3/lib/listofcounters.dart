import 'package:flutter/material.dart';

class Listofcounters extends StatelessWidget {
  const Listofcounters({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Container(
        color: Colors.amber,
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Home"),
                CircleAvatar(
                  backgroundImage: AssetImage(""),
                ),
              ],
            ),
            Text(
              "Fruits & Vegitables",
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              height: 190,
              width: 350,
              child: ClipRRect(
                child: Image.asset(
                  "assets/images/banner.webp",
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (contex, index) {
                    return ListTile(
                      leading: Text("main"),
                      title: Text("Apple"),
                      subtitle: Text("200"),
                      trailing: Text("Buy"),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
