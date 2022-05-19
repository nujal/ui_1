import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //List<NetworkImage> items = ['',];

  List<String> items = [
    'assets/bicycle.jpg',
    'assets/bicycle.jpg',
    'assets/bicycle.jpg',
    'assets/bicycle.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white54,
        leading: Row(
          children: <Widget>[
            const SizedBox(
              width: 4.0,
            ),
            IconButton(
              color: Colors.black45,
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
            ),
          ],
        ),
        title: const Text(
          'AQUA PEARL BLUE',
          textScaleFactor: 0.8,
          style: TextStyle(color: Colors.black45),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            color: Colors.black45,
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Image.asset('assets/bicycle.jpg'),
            ),
            const SizedBox(
              height: 80,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 224, 237, 247),
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(30.0),
                    topRight: const Radius.circular(30.0),
                  ),
                ),
                child: Column(children: [
                  ListTile(
                    title: Text(
                      'Aqua Pearl Blue',
                      textScaleFactor: 1.2,
                      style: TextStyle(color: Colors.black45),
                    ),
                    subtitle: Text(
                      'nice bicycle',
                      style: TextStyle(color: Colors.black45),
                    ),
                    trailing: Text(
                      '\$500',
                      textScaleFactor: 1.2,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(50.0),
                          topRight: const Radius.circular(50.0),
                          bottomLeft: const Radius.circular(20),
                          bottomRight: const Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 20),
                          Text(
                            'Configurations',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(height: 90),
                          Expanded(
                            child: GridView.builder(
                              itemCount: items.length,
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      childAspectRatio: 2 / 3,
                                      crossAxisSpacing: 2,
                                      crossAxisCount: 1,
                                      mainAxisSpacing: 2),
                              itemBuilder: (context, index) {
                                return ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  child: Image.asset(
                                    items[index],
                                    fit: BoxFit.fitWidth,
                                  ),
                                );
                              },
                            ),
                          ),

                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //   children: [
                          //     Text(
                          //       "F",
                          //       style: TextStyle(color: Colors.white),
                          //     ),
                          //     Text(
                          //       "F",
                          //       style: TextStyle(color: Colors.white),
                          //     ),
                          //     Text(
                          //       "F",
                          //       style: TextStyle(color: Colors.white),
                          //     ),
                          //     Text(
                          //       "F",
                          //       style: TextStyle(color: Colors.white),
                          //     ),
                          //     Text(
                          //       "F",
                          //       style: TextStyle(color: Colors.white),
                          //     ),
                          //     Text(
                          //       "F",
                          //       style: TextStyle(color: Colors.white),
                          //     ),
                          //   ],
                          // ),
                          SizedBox(
                            height: 60,
                          ),
                          SizedBox(
                            height: 60,
                            width: 70,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: new BorderRadius.circular(25.0),
                              ),
                              child: Center(
                                child: Text('Buy', textScaleFactor: 1.2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
