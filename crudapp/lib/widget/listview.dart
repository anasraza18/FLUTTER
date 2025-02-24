import 'package:flutter/material.dart';

class Listviewcrud extends StatefulWidget {
  const Listviewcrud({super.key});

  @override
  State<Listviewcrud> createState() => _ListviewState();
}

class _ListviewState extends State<Listviewcrud> {
  List<Map<String, dynamic>> data = [];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 15,
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
        });
  }
}
