import 'package:flutter/material.dart';
import 'package:myapp/Loginin_view.dart';
import 'package:myapp/Widgets/chats.dart';
import 'package:myapp/Widgets/slideAction.dart';
import 'package:myapp/product.dart';

// ignore: must_be_immutable
class MessangerView extends StatelessWidget {
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
  MessangerView({super.key});

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

        //list view
        child: Container(
          color: Colors.white.withOpacity(0.6),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 40,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Colors.yellow.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text("All"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.yellow.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text("Unread"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.yellow.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text("Favourites"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 90,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.yellow.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text("Groups"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 40,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.yellow.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    return Chats(
                        name: users[index]['name']!,
                        text: users[index]['text']!,
                        time: users[index]['time']!,
                        image: users[index]['image']!);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pink,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: Colors.yellow,
            ),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update, color: Colors.yellow),
            label: "Updates",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call, color: Colors.yellow),
            label: "Calls",
          ),
        ],
      ),
    );
  }
}
