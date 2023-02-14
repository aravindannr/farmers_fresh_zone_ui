import 'package:farmers_fresh_zone_ui/grid.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Farmer(),
    debugShowCheckedModeBanner: false,
  ));
}

class Farmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.green,
              title: Text("FARMERS FRESH ZONE"),
              actions: [
                Row(
                  children: [
                    Icon(Icons.location_on),
                    Text("Kochi"),
                    Icon(Icons.keyboard_arrow_down_outlined)
                  ],
                ),
              ],
              expandedHeight: 100,
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(
                    top: 50, left: 10, right: 10, bottom: 10),
                child: Container(
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText:
                        'Search for vegitables and fruits.....'),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: 40,
                        width: 90,
                        child: Card(
                          child: Center(
                              child: Text("Vegitables",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.green))),
                        )),
                    SizedBox(
                      height: 40,
                      width: 90,
                      child: Card(
                        child: Center(
                            child: Text("Fruits",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.green))),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 90,
                      child: Card(
                        child: Center(
                            child: Text("Exotics",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.green))),
                      ),
                    ),
                    SizedBox(
                        height: 40,
                        width: 90,
                        child: Card(
                          child: Center(
                              child: Text("Fresh cuts",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.green))),
                        ))
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Marketvegetables.jpg/1200px-Marketvegetables.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.timer),
                          Text("30 minutes policy")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.location_on),
                          Text("Tracability")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.man),
                          Text("local Sourcing")
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Shop by Category",
                    style: TextStyle(fontSize: 20, color: Colors.grey[800]),
                  ),
                )),

            SliverToBoxAdapter(
              child: Grid(),
            )

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.account_box_sharp),label: 'Account')
      ],),
    );
  }
}
