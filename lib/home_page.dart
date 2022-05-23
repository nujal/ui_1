import 'dart:ui';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //List<String> items = ["harry", "heung", "diego","ronaldo"];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                  height: 284,
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
            Container(
              color: Colors.cyan,
              child: TabBar(tabs: [
                Tab(
                  text: 'player',
                ),
                Tab(
                  text: 'profile',
                ),
              ]),
            ),
            Container(
              height: 400,
              width: double.maxFinite,
              child: TabBarView(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    itemCount: 6,
                    primary: false,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.teal[100],
                        child: Center(
                            child:
                                const Text("He'd have you all unravel at the")),
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    itemCount: 6,
                    primary: false,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.teal[100],
                        child: Center(
                            child:
                                const Text("He'd have you all unravel at the")),
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
