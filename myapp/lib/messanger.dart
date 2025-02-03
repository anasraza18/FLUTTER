import 'package:flutter/material.dart';
import 'package:myapp/Loginin_view.dart';
import 'package:myapp/Widgets/slideAction.dart';
import 'package:myapp/product.dart';

class MessangerView extends StatelessWidget {
  const MessangerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app Bar
      appBar: AppBar(
        leading: const Icon(Icons.chat, color: Colors.white, size: 30),
        title: const Text(
          "Messenger",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.pink,
        actions: [
          IconButton(
            onPressed: () {
              slideaction(
                func: Product(), // LoginView widget
              ).navigate(context);
            },
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.yellow,
              size: 24,
            ),
          ),
          IconButton(
            onPressed: () {
              slideaction(
                func: LoginView(), // LoginView widget
              ).navigate(context);
            },
            icon: Icon(
              Icons.account_circle,
              color: Colors.yellow,
              size: 24,
            ),
          ),
        ],
      ),
      //Body
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.webp"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.star),
                title: Text("Item 1"),
                subtitle: Text("This is item 1"),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text("Item 2"),
                subtitle: Text("This is item 2"),
                trailing: Icon(Icons.arrow_forward),
              ),
            ],
          )),
    );
  }
}
