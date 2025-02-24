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
            leading: Text(data[index]['number']),
            title: Text(data[index]['title']),
            subtitle: Text(data[index]['subtitle']),
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
          title: Text("Dialog Title"),
          content: Column(
            children: [
              TextFormField(
                controller: editnum,
                decoration: InputDecoration(
                  labelText: "edit number...",
                  border: OutlineInputBorder(),
                ),
              ),
              TextFormField(
                controller: edittitle,
                decoration: InputDecoration(
                  labelText: "edit title...",
                  border: OutlineInputBorder(),
                ),
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
