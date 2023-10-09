import 'package:flutter/material.dart';

import 'package:my_coffee/pages/Home_Page.dart';
import 'package:flutter/services.dart';
import 'package:my_coffee/pages/Sign_Up_Page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;
  final List Pages = [const HomePage()];

  void ChangePage(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Coffee",
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.orange),
      home: Scaffold(
          //bottom navigation

          bottomNavigationBar: BottomNavigationBar(
              onTap: ChangePage,
              currentIndex: _index,
              selectedItemColor: Colors.orange,
              unselectedItemColor: Colors.grey[600],
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: const Color(0xff0c0f14),
              elevation: 0,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart), label: '')
              ]),

          //body
          body: HomePage()),
    );
  }
}

// Pages[_index]