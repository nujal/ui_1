import 'dart:ui';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //List<String> items = ["name", "name", "name"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Stacks'),
        centerTitle: true,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Icon(Icons.notification_add),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 330,
                width: double.infinity,
                color: Colors.cyan,
              ),
              Container(
                height: 195,
                child: Center(child: Image.asset('assets/images/1.jpg')),
              ),
              Positioned(
                top: 194,
                child: Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blueGrey,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 110, top: 0),
                    title: Text(
                      'Harry kane',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    subtitle: Text(
                      'He is very good player. He plays for Spurs',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 164,
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Container(
                    child: Image.asset('assets/images/harry.jpg'),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
            width: double.infinity,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 16,
                    spreadRadius: 0,
                    offset: const Offset(0.5, 0.5),
                  ),
                ]),
                height: 80,
                width: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'data',
                    ),
                    Text('heloo'),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 16,
                    spreadRadius: 0,
                    offset: const Offset(0.5, 0.5),
                  ),
                ]),
                height: 70,
                width: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'data',
                    ),
                    Text('heloo'),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 16,
                    spreadRadius: 0,
                    offset: const Offset(0.5, 0.5),
                  ),
                ]),
                height: 80,
                width: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'data',
                    ),
                    Text('heloo'),
                  ],
                ),
              ),
            ],
            //items.map((e) => Text(e)).toList(),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      blurRadius: 14,
                      spreadRadius: 0,
                      offset: const Offset(0.4, 0.4),
                    ),
                  ],
                ),
                height: 100,
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('data'),
                    Text('hello'),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      blurRadius: 14,
                      spreadRadius: 0,
                      offset: const Offset(0.4, 0.4),
                    ),
                  ],
                ),
                height: 100,
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('data'),
                    Text('hello'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      blurRadius: 14,
                      spreadRadius: 0,
                      offset: const Offset(0.4, 0.4),
                    ),
                  ],
                ),
                height: 140,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('data'),
                    Text('hello'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
