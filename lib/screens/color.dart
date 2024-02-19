import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/number.dart';

class Colorpage extends StatelessWidget {
  Colorpage({super.key});
  List<Number> colors = [
    Number(
      sounds: "sounds/colors/black.wav",
      image: "assets/images/colors/color_black.png",
      jpName: "Kuro",
      enName: "black",
    ),
    Number(
      sounds: "sounds/colors/brown.wav",
      image: "assets/images/colors/color_brown.png",
      jpName: "Chairo",
      enName: "brown",
    ),
    Number(
      sounds: "sounds/colors/dusty yellow.wav",
      image: "assets/images/colors/color_dusty_yellow.png",
      jpName: "Dasutiierō",
      enName: "dusty yellow",
    ),
    Number(
      sounds: "sounds/colors/gray.wav",
      image: "assets/images/colors/color_gray.png",
      jpName: "Gurē",
      enName: "gray",
    ),
    Number(
      sounds: "sounds/colors/green.wav",
      image: "assets/images/colors/color_green.png",
      jpName: "Hahaoya",
      enName: "mother",
    ),
    Number(
      sounds: "sounds/colors/red.wav",
      image: "assets/images/colors/color_red.png",
      jpName: "Aka",
      enName: "red",
    ),
    Number(
      sounds: "sounds/colors/white.wav",
      image: "assets/images/colors/color_white.png",
      jpName: "Shiro",
      enName: "white",
    ),
    Number(
      sounds: "sounds/colors/yellow.wav",
      image: "assets/images/colors/yellow.png",
      jpName: "Kiiro",
      enName: "yellow",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(255, 192, 138, 81),
          elevation: 0,
          title: Container(
            alignment: Alignment.center,
            child: Text(
              "Color",
              style: TextStyle(fontSize: 28),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (Context, num) {
            return Item(
              number: colors[num],
              color: Color.fromARGB(255, 192, 138, 81),
            );
          },
        ));
  }
}
