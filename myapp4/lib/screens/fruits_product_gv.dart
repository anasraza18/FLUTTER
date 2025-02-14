// import 'package:flutter/material.dart';
// import 'package:myapp4/widgets/catagory.dart';
// import 'package:myapp4/widgets/fruits_gridview.dart';

// class FruitsProductGv extends StatefulWidget {
//   const FruitsProductGv({super.key});

//   @override
//   State<FruitsProductGv> createState() => _FruitsProductGvState();
// }

// class _FruitsProductGvState extends State<FruitsProductGv> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   color: const Color.fromARGB(214, 7, 7, 7),
//                   height: 250,
//                   width: double.infinity,
//                   child: Padding(
//                     padding: const EdgeInsets.only(
//                       top: 60,
//                       right: 20,
//                       left: 20,
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Text(
//                               "Location",
//                               style: TextStyle(
//                                 color: const Color.fromARGB(255, 214, 212, 212),
//                                 fontSize: 16,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Row(
//                           children: [
//                             Text(
//                               "Karachi,Pakistan",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 16,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Row(
//                           children: [
//                             Expanded(
//                               child: TextFormField(
//                                 decoration: InputDecoration(
//                                   label: Text(
//                                     "Search..",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                   prefixIconColor: Colors.white,
//                                   prefixIcon: Icon(
//                                     Icons.search,
//                                   ),
//                                   filled: true,
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(15),
//                                     borderSide: BorderSide.none,
//                                   ),
//                                   fillColor:
//                                       const Color.fromARGB(163, 107, 105, 105),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Row(
//                               children: [
//                                 Container(
//                                   height: 40,
//                                   width: 40,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(9),
//                                     color: const Color.fromARGB(
//                                         255, 236, 171, 148),
//                                   ),
//                                   child: Icon(Icons.filter_list),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 200, right: 20, left: 20),
//                   child: Container(
//                     height: 150,
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: ClipRRect(
//                       child: Image.asset(
//                         "assets/images/bg.webp",
//                         fit: BoxFit.cover,
//                       ),
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Catagory(),
//             SizedBox(
//               height: 10,
//             ),
//             //AllGridview(),
//             FruitsGridview(),
//           ],
//         ),
//       ),
//     );
//   }
// }
