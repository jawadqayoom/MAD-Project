// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';


class CoffeeType extends StatelessWidget {
  final String Name;

  final String ImageLoc;
  final double price;
  final gradientColors = [const Color(0xff141921), const Color(0xff12161c)];

  CoffeeType(
      {super.key,
      required this.Name,
      required this.ImageLoc,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(
          padding: const EdgeInsets.all(20),
          width: 200,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: gradientColors,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
              color: const Color(0xff262a32),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: AspectRatio(
                  aspectRatio: 5.2 / 9,
                  child: Image.asset(
                    ImageLoc,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                Name,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "with almond milk",
                style: TextStyle(fontSize: 10, color: Colors.grey.shade600),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$${price.toString()}"),
                  GestureDetector(
                    onTap: () {
                     

                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: Color(0xff0c0f14),
                              title: Text(
                                "Added to cart",
                                style: TextStyle(color: Colors.orange),
                              ),
                            );
                          });
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(Icons.add),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
