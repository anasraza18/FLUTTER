import 'package:crudapp/data/data.dart';
import 'package:crudapp/widget/listview.dart';
import 'package:flutter/material.dart';

class Crudapp extends StatefulWidget {
  const Crudapp({super.key});

  @override
  State<Crudapp> createState() => _CrudappState();
}

class _CrudappState extends State<Crudapp> {
  TextEditingController numberr = TextEditingController();
  TextEditingController titlee = TextEditingController();
  TextEditingController subtitlee = TextEditingController();

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
          Expanded(
            child: Listviewcrud(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          numberr.clear();
          titlee.clear();
          subtitlee.clear();
          _showBottomSheet();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  //--------------------bottomsheet-----------------------------------------
  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // agar full-screen bottom sheet chahiye
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            top: 16,
            left: 16,
            right: 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Add New Item",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: numberr,
                decoration: InputDecoration(
                  labelText: "Enter Number...",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: titlee,
                decoration: InputDecoration(
                  labelText: "Enter title...",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: subtitlee,
                decoration: InputDecoration(
                  labelText: "Enter subtitle...",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                  data.add({
                    'number': numberr.text,
                    'title': titlee.text,
                    'subtitle': subtitlee.text
                  });
                  Navigator.pop(context);
                },
                child: Text("Add"),
              ),
            ],
          ),
        );
      },
    );
  }
  //---------------------------------------------------------------------
}
