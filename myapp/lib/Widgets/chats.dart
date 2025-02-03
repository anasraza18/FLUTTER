import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Chats extends StatelessWidget {
  String? name;
  String? text;
  String? time;
  String? image;
  Chats(
      {super.key,
      required this.name,
      required this.text,
      required this.time,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
        radius: 25,
        backgroundImage: AssetImage("${image}"),
      ),
      shape: Border.all(
          color: Colors.white,
          width: 5.0,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignOutside),
      title: Text(
        "${name}",
        style: TextStyle(fontSize: 16),
      ),
      subtitle: Text(
        "${text}",
        style: TextStyle(fontSize: 16),
      ),
      trailing: Text(
        "${time}",
        style: TextStyle(fontSize: 16),
      ),
      onTap: () {
        print("Hello");
      },
    );
  }
}
