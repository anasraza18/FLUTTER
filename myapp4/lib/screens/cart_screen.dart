import 'package:flutter/material.dart';
import 'package:myapp4/models/cart_provider.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Products'),
      ),
      body: cart.cartItems.isEmpty
          ? Center(child: Text('Cart is Empty'))
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: cart.cartItems.length,
                      itemBuilder: (context, index) {
                        final cartItem = cart.cartItems[index];
                        return Card(
                          elevation: 2,
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: ListTile(
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  cartItem.image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            title: Text(
                              cartItem.name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("\$${cartItem.price.toString()}"),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    cart.removeFromCart(cartItem);
                                  },
                                  icon: Icon(Icons.remove, color: Colors.red),
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(fontSize: 18),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.add, color: Colors.green),
                                ),
                                IconButton(
                                    onPressed: () {
                                      Provider.of<CartProvider>(context,
                                              listen: false)
                                          .removeFromCart(cartItem);
                                    },
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ))
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Total Price: Rs.${cart.cartItems.fold(0, (sum, item) => sum + item.price.toInt())}",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "View Cart",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Checkout",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
















// import 'package:flutter/material.dart';
// import 'package:myapp4/cart_provider.dart';
// import 'package:myapp4/data/products_data.dart';
// import 'package:provider/provider.dart';

// class CartScreen extends StatelessWidget {
//   const CartScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final cart = Provider.of<CartProvider>(context);
//     return cart.cartItems.isEmpty
//         ? Center(child: Text('Cart is Empty'))
//         : Drawer(
//             width: MediaQuery.of(context).size.width *
//                 0.7, // Drawer ki width adjust ki
//             backgroundColor: Colors.amber,
//             child: Padding(
//               padding: const EdgeInsets.only(
//                   top: 40, left: 20, right: 20, bottom: 100),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       IconButton(
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                         icon: Icon(Icons.arrow_back),
//                       ),
//                       SizedBox(width: 20),
//                       Text(
//                         "Cart Products",
//                         style: TextStyle(
//                           fontSize: 24,
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                   Expanded(
//                     child: ListView.builder(
//                       itemCount: cart.cartItems.length,
//                       itemBuilder: (context, index) {
//                          final cartItem = cart.cartItems[index];
//                         return Card(
//                           elevation: 2,
//                           margin: EdgeInsets.symmetric(vertical: 5),
//                           child: ListTile(
//                             leading: Container(
//                               height: 50,
//                               width: 50,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(8),
//                                 child: Image.asset(
//                                   cartItem.image,
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             ),
//                             title: Text(
//                               cartItem.name,
//                               style: TextStyle(fontWeight: FontWeight.bold),
//                             ),
//                             subtitle: Text(
//                                 "\$${cartItem.price.toString()}"),
//                             trailing: Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: Icon(Icons.remove, color: Colors.red),
//                                 ),
//                                 Text(
//                                   "0",
//                                   style: TextStyle(fontSize: 18),
//                                 ),
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: Icon(Icons.add, color: Colors.green),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Container(
//                     height: 20,
//                     width: 300,
//                     child: Center(
//                         child: Text(
//                       "Total Price :   " + "Rs.1000",
//                       style: TextStyle(
//                         fontSize: 18,
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     )),
//                   ),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Container(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         ElevatedButton(
//                           onPressed: () {},
//                           child: Text(
//                             "View Cart",
//                             style: TextStyle(
//                               color: Colors.white,
//                             ),
//                           ),
//                           style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.black),
//                         ),
//                         ElevatedButton(
//                           onPressed: () {},
//                           child: Text(
//                             "Checkout",
//                             style: TextStyle(
//                               color: Colors.white,
//                             ),
//                           ),
//                           style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.black),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//   }
// }
