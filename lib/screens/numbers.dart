import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/number.dart';

class Numpers extends StatelessWidget {
  Numpers({super.key});

  List<Number> numbers = [
    Number(
      sounds: "sounds/numbers/number_one_sound.mp3",
      image: "assets/images/numbers/number_one.png",
      jpName: "Ichi",
      enName: "One",
    ),
    Number(
      sounds: "sounds/numbers/number_two_sound.mp3",
      image: "assets/images/numbers/number_two.png",
      jpName: "Ni",
      enName: "Two",
    ),
    Number(
      sounds: "sounds/numbers/number_three_sound.mp3",
      image: "assets/images/numbers/number_three.png",
      jpName: "San",
      enName: "Three",
    ),
    Number(
      sounds: "sounds/numbers/number_four_sound.mp3",
      image: "assets/images/numbers/number_four.png",
      jpName: "Shi",
      enName: "Four",
    ),
    Number(
      sounds: "sounds/numbers/number_five_sound.mp3",
      image: "assets/images/numbers/number_five.png",
      jpName: "Go",
      enName: "Five",
    ),
    Number(
      sounds: "sounds/numbers/number_six_sound.mp3",
      image: "assets/images/numbers/number_six.png",
      jpName: "Roku",
      enName: "Six",
    ),
    Number(
      sounds: "sounds/numbers/number_seven_sound.mp3",
      image: "assets/images/numbers/number_seven.png",
      jpName: "Sebun",
      enName: "Seven",
    ),
    Number(
      sounds: "sounds/numbers/number_eight_sound.mp3",
      image: "assets/images/numbers/number_eight.png",
      jpName: "Hachi",
      enName: "Eight",
    ),
    Number(
      sounds: "sounds/numbers/number_nine_sound.mp3",
      image: "assets/images/numbers/number_nine.png",
      jpName: "Kyū",
      enName: "Nine",
    ),
    Number(
      sounds: "sounds/numbers/number_ten_sound.mp3",
      image: "assets/images/numbers/number_ten.png",
      jpName: "Jū",
      enName: "Ten",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 224, 176, 32),
        elevation: 0,
        title: Container(
          alignment: Alignment.center,
          child: Text(
            "Numbers",
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (Context, num) {
          return Item(
            number: numbers[num],
            color: Color.fromARGB(255, 224, 176, 32),
          );
        },
      ),
    );
  }
}
