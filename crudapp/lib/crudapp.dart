import 'package:crudapp/widget/listview.dart';
import 'package:flutter/material.dart';

class Crudapp extends StatefulWidget {
  const Crudapp({super.key});

  @override
  State<Crudapp> createState() => _CrudappState();
}

class _CrudappState extends State<Crudapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 210, 188),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 210, 188),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(right: 30, left: 30),
            width: MediaQuery.sizeOf(context).width * 1.0,
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search), hintText: "Search...."),
            ),
          ),
          Container(
            height: MediaQuery.sizeOf(context).height * 0.6,
            child: Listviewcrud(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
