import 'package:crudapp/data/data.dart';
import 'package:flutter/material.dart';

class Listviewcrud extends StatefulWidget {
  const Listviewcrud({super.key});

  @override
  State<Listviewcrud> createState() => _ListviewState();
}

class _ListviewState extends State<Listviewcrud> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(
              data[index]['number'],
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            title: Text(
              data[index]['title'],
              style: TextStyle(
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            subtitle: Text(
              data[index]['subtitle'],
              style: TextStyle(
                  fontSize: 16,
                  //fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    _showMyDialog(index: index);
                  },
                  icon: Icon(Icons.edit),
                ),
                IconButton(
                  onPressed: () {
                    _showMyDialogRmv(index: index);
                  },
                  icon: Icon(Icons.delete),
                ),
              ],
            ),
          );
        });
  }

//-------------------show alert dialouge for edit--------------------------------------
  void _showMyDialog({required int index}) {
    TextEditingController editnum =
        TextEditingController(text: data[index]['number']);
    TextEditingController edittitle =
        TextEditingController(text: data[index]['title']);
    TextEditingController editsubtitle =
        TextEditingController(text: data[index]['subtitle']);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Edit Data"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: editnum,
                decoration: InputDecoration(
                  labelText: "edit number...",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: edittitle,
                decoration: InputDecoration(
                  labelText: "edit title...",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: editsubtitle,
                decoration: InputDecoration(
                  labelText: "edit subtitle...",
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                {
                  setState(() {});
                  data[index]['number'] = editnum.text;
                  data[index]['title'] = edittitle.text;
                  data[index]['subtitle'] = editsubtitle.text;
                }
                Navigator.pop(context);
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  //-------------------show alert dialouge for edit--------------------------------------
  void _showMyDialogRmv({required int index}) {
    // TextEditingController editnum =
    //     TextEditingController(text: data[index]['number']);
    // TextEditingController edittitle =
    //     TextEditingController(text: data[index]['title']);
    // TextEditingController editsubtitle =
    //     TextEditingController(text: data[index]['subtitle']);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("are you sure !"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                {
                  setState(() {});
                  data.removeAt(index);
                }
                Navigator.pop(context);
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
