import 'package:flutter/material.dart';

class Crudapp extends StatefulWidget {
  const Crudapp({super.key});

  @override
  State<Crudapp> createState() => _CrudappState();
}

class _CrudappState extends State<Crudapp> {
  List<Map<String, dynamic>> data = [];
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
            height: MediaQuery.sizeOf(context).height * 0.8,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text("data"),
                    title: Text("data"),
                    subtitle: Text("data"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.edit),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.delete),
                        ),
                      ],
                    ),
                  );
                }),
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
