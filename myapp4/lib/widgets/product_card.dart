import 'package:flutter/material.dart';
import 'package:myapp4/data/products_data.dart';
import 'package:myapp4/models/products.dart';

class AllGridview extends StatefulWidget {
  AllGridview({super.key});

  @override
  State<AllGridview> createState() => _AllGridviewState();
}

class _AllGridviewState extends State<AllGridview> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: productdata.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: MediaQuery.of(context).size.height * 0.27,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return Card(
            // color: Colors.red,
            shadowColor: Colors.black,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width * 0.30,
                  width: MediaQuery.of(context).size.width * 0.40,
                  child: ClipRRect(
                    child: Image.asset(
                      productdata[index].image,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
                  child: Row(
                    children: [
                      Text(productdata[index].name),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(productdata[index].price.toString()),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 245, 204, 189),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add),
                          color: Colors.brown,
                          highlightColor:
                              const Color.fromARGB(255, 236, 191, 174),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
