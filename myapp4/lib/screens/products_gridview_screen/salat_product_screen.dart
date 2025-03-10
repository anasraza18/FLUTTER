import 'package:flutter/material.dart';
import 'package:myapp4/data/locations_data.dart';
import 'package:myapp4/data/salat_product_data.dart';
import 'package:myapp4/models/products.dart';
import 'package:myapp4/screens/cart_screen.dart';
import 'package:myapp4/widgets/Cards/salat_product_card.dart';
import 'package:myapp4/widgets/catagory.dart';

class SalatProductScreen extends StatefulWidget {
  const SalatProductScreen({super.key});

  @override
  State<SalatProductScreen> createState() => _SalatProductScreenState();
}

class _SalatProductScreenState extends State<SalatProductScreen> {
  //----------search filter--------------------
  List<Product> filtered_salat_data = [];
  TextEditingController searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
    filtered_salat_data = List.from(salatproductdata);
  }

  void filter_salat_data(String query) {
    List<Product> results = [];
    if (query.isEmpty) {
      results = List.from(salatproductdata);
    } else {
      results = salatproductdata
          .where((salatproduct) =>
              salatproduct.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    setState(() {
      filtered_salat_data = results;
    });
    //=----------------------------------------------------------
  }

  String? selectedvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: const Color.fromARGB(214, 7, 7, 7),
                  height: 250,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 45,
                      right: 20,
                      left: 20,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Location",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 214, 212, 212),
                                fontSize: 16,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CartScreen()));
                              },
                              icon: Icon(Icons.shopping_cart),
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            DropdownButtonHideUnderline(
                              child: Theme(
                                data: Theme.of(context).copyWith(
                                  canvasColor: Colors.black.withOpacity(0.9),
                                ),
                                child: DropdownButton<String>(
                                  hint: Text(
                                    'Select an option',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                  value: selectedvalue,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedvalue = newValue;
                                    });
                                  },
                                  items: locations.map((String option) {
                                    return DropdownMenuItem<String>(
                                      value: option,
                                      child: Text(
                                        option,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    );
                                  }).toList(),

                                  //dropdownColor: Colors.black, // ⚡ Ye optional hai, Theme use ho rahi hai
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: searchController,
                                onChanged: (query) => filter_salat_data(query),
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  hintText: "Search..",
                                  prefixIconColor: Colors.white,
                                  prefixIcon: Icon(
                                    Icons.search,
                                  ),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide.none,
                                  ),
                                  focusColor: Colors.white,
                                  fillColor:
                                      const Color.fromARGB(163, 107, 105, 105),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: const Color.fromARGB(
                                        255, 236, 171, 148),
                                  ),
                                  child: Icon(Icons.filter_list),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 220, right: 20, left: 20),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/images/bg.webp",
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Catagory(),
            SalatProductCard(
              filtersalatdata: filtered_salat_data,
            ),
          ],
        ),
      ),
    );
  }
}
