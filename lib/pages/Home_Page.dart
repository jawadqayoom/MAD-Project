import 'package:flutter/material.dart';
import 'package:my_coffee/Components/CoffeeTile.dart';
import 'package:my_coffee/Components/Coffee_Type.dart';
import 'package:my_coffee/Components/Navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //Sidebar
        resizeToAvoidBottomInset: false,
        drawer: const Navbar(),
        //AppBar
        backgroundColor: const Color(0xff0c0f14),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.person))
          ],
        ),
        //Body

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //upper Text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Text(
                "Enjoy your favorite Coffee",
                style: TextStyle(fontSize: 56, fontFamily: "Bebas"),
              ),
            ),
            //Search bar
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      fillColor: Color(0xff141921),
                      filled: true)),
            ),

            const SizedBox(
              height: 20,
            ),

            // horizental option Menu
            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CoffeeTile(Name: "Expresso"),
                  CoffeeTile(Name: "Cappucino"),
                  CoffeeTile(Name: "Latte"),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CoffeeType(
                      Name: "Cuppucino",
                      ImageLoc: "Assets/images/p1.jpg",
                      price: 4.20),
                  CoffeeType(
                      Name: "Latte",
                      ImageLoc: "Assets/images/p2.jpg",
                      price: 3.20),
                  CoffeeType(
                      Name: "Expresso",
                      ImageLoc: "Assets/images/p3.jpg",
                      price: 6.20),
                ],
              ),
            )
          ],
        ),

        //BottomNavBar
      ),
    );
  }
}
