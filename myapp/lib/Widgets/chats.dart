import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Chats extends StatelessWidget {
  List users = [
    {
      'name': 'Anas',
      'text': 'Hi!',
      'time': '02:00 pm',
      'image': "assets/images/anas.jpg",
    },
    {
      'name': 'Ali',
      'text': 'good morning',
      'time': '09:45 am',
      'image': "assets/images/2.webp",
    },
    {
      'name': 'Saim',
      'text': 'ooooooooookkkkkkjjjjjjjhhhh',
      'time': '07:20 pm',
      'image': "assets/images/3.webp",
    },
    {
      'name': 'Saam',
      'text': 'hhjbhjvhgvghvbnbvc',
      'time': '01:20 am',
      'image': "assets/images/4.webp",
    },
    {
      'name': 'Anas',
      'text': 'Hi......',
      'time': '02:10 pm',
      'image': "assets/images/5.webp",
    },
    {
      'name': 'Ahmed',
      'text': 'ok',
      'time': '10:00 pm',
      'image': "assets/images/6.webp",
    },
    {
      'name': 'SMIT',
      'text': 'mujhy jana bhe he bhai',
      'time': '09:40 pm',
      'image': "assets/images/7.webp",
    },
    {
      'name': 'faizan',
      'text': 'kal tk daikhyngy',
      'time': 'Yesterday',
      'image': "assets/images/8.webp",
    },
    {
      'name': 'Saim',
      'text': 'ni chaye osy wo',
      'time': '07:30 pm',
      'image': "assets/images/9.webp",
    },
    {
      'name': 'Abuzar',
      'text': 'kal aonga men thk he',
      'time': '07:34 am',
      'image': "assets/images/10.webp",
    },
    {
      'name': 'Bhai',
      'text': 'kb ao gy?',
      'time': '08:45 pm',
      'image': "assets/images/11.webp",
    },
    {
      'name': 'Farhan',
      'text': 'thk he',
      'time': '04:33 pm',
      'image': "assets/images/12.webp",
    },
    {
      'name': 'saad',
      'text': 'How are you!',
      'time': '01:00 pm',
      'image': "assets/images/13.webp",
    },
    {
      'name': 'Ali',
      'text': 'Hello!',
      'time': '05:00 pm',
      'image': "assets/images/14.webp",
    },
  ];
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
