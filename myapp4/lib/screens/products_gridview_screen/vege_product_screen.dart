import 'package:flutter/material.dart';
import 'package:myapp4/data/locations_data.dart';
import 'package:myapp4/data/vege_product_data.dart';
import 'package:myapp4/models/products.dart';
import 'package:myapp4/widgets/Cards/vege_product_card.dart';
import 'package:myapp4/widgets/catagory.dart';

class VegeProductScreen extends StatefulWidget {
  const VegeProductScreen({super.key});

  @override
  State<VegeProductScreen> createState() => _VegeProductScreenState();
}

class _VegeProductScreenState extends State<VegeProductScreen> {
  List<Product> filtered_vege_data = [];
  TextEditingController searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
    filtered_vege_data = List.from(vegeproductdata);
  }

  void filter_vege_data(String query) {
    List<Product> results = [];
    if (query.isEmpty) {
      results = List.from(vegeproductdata);
    } else {
      results = vegeproductdata
          .where((vegeproduct) =>
              vegeproduct.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    setState(() {
      filtered_vege_data = results;
    });
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
                          children: [
                            Text(
                              "Location",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 214, 212, 212),
                                fontSize: 16,
                              ),
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
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: SearchController(),
                                onChanged: (query) => filter_vege_data(query),
                                decoration: InputDecoration(
                                  label: Text(
                                    "Search..",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  prefixIconColor: Colors.white,
                                  prefixIcon: Icon(
                                    Icons.search,
                                  ),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide.none,
                                  ),
                                  fillColor:
                                      const Color.fromARGB(163, 107, 105, 105),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
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
                  padding: const EdgeInsets.only(top: 200, right: 20, left: 20),
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
            VegeProductCard(
              filtervegedata: filtered_vege_data,
            ),
          ],
        ),
      ),
    );
  }
}
