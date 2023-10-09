// ignore: file_names
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String Name;

  CoffeeTile({required this.Name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Text(
        Name,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orange),
      ),
    );
  }
}
