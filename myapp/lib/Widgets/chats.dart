import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Chats extends StatelessWidget {
  List users = [
    {
      'name': 'Anas',
      'text': 'Hi!',
      'time': '02:00',
    },
    {
      'name': 'Anas',
      'text': 'good morning',
      'time': '09:45',
    },
    {
      'name': 'Saim',
      'text': 'ooooooooookkkkkkjjjjjjjhhhh',
      'time': '07:20',
    },
    {
      'name': 'Saam',
      'text': 'hhjbhjvhgvghvbnbvc',
      'time': '01:20',
    },
    {
      'name': 'Anas',
      'text': 'Hi......',
      'time': '02:10',
    },
    {
      'name': 'Ahmed',
      'text': 'ok',
      'time': '10:00',
    },
    {
      'name': 'SMIT',
      'text': 'mujhy jana bhe he bhai',
      'time': '09:40',
    },
    {
      'name': 'faizan',
      'text': 'kal tk daikhyngy',
      'time': 'Yesterday',
    },
    {
      'name': 'Saim',
      'text': 'ni chaye osy wo',
      'time': '07:30',
    },
    {
      'name': 'Abuzar',
      'text': 'kal aonga men thk he',
      'time': '07:34',
    },
    {
      'name': 'Bhai',
      'text': 'kb ao gy?',
      'time': '08:45',
    },
    {
      'name': 'Farhan',
      'text': 'thk he',
      'time': '04:33',
    },
    {
      'name': 'saad',
      'text': 'How are you!',
      'time': '01:00',
    },
    {
      'name': 'Ali',
      'text': 'Hello!',
      'time': '05:00',
    },
  ];

  String? name;
  String? text;
  String? time;
  String? image;
  Chats(
      {super.key,
      users,
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
      onTap: () {},
    );
  }
}
