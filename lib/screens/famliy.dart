import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/number.dart';

class Famliy extends StatelessWidget {
  Famliy({super.key});
  List<Number> famliy = [
    Number(
      sounds: "sounds/family_members/father.wav",
      image: "assets/images/family_members/family_father.png",
      jpName: "Chichioya",
      enName: "Father",
    ),
    Number(
      sounds: "sounds/family_members/daughter.wav",
      image: "assets/images/family_members/family_daughter.png",
      jpName: "Musume",
      enName: "Daughter",
    ),
    Number(
      sounds: "sounds/family_members/grand father.wav",
      image: "assets/images/family_members/family_grandfather.png",
      jpName: "Ojisan",
      enName: "Grand father",
    ),
    Number(
      sounds: "sounds/family_members/grand mother.wav",
      image: "assets/images/family_members/family_grandmother.png",
      jpName: "Sobo",
      enName: "Grand mother",
    ),
    Number(
      sounds: "sounds/family_members/mother.wav",
      image: "assets/images/family_members/family_mother.png",
      jpName: "Hahaoya",
      enName: "Mother",
    ),
    Number(
      sounds: "sounds/family_members/older bother.wav",
      image: "assets/images/family_members/family_older_brother.png",
      jpName: "Nisan",
      enName: "Older bother",
    ),
    Number(
      sounds: "sounds/family_members/older sister.wav",
      image: "assets/images/family_members/family_older_sister.png",
      jpName: "Ane",
      enName: "Older sister",
    ),
    Number(
      sounds: "sounds/family_members/son.wav",
      image: "assets/images/family_members/family_son.png",
      jpName: "Musuko",
      enName: "Son",
    ),
    Number(
      sounds: "sounds/family_members/younger brohter.wav",
      image: "assets/images/family_members/family_younger_brother.png",
      jpName: "Otōto",
      enName: "Younger brohter",
    ),
    Number(
      sounds: "sounds/family_members/younger sister.wav",
      image: "assets/images/family_members/family_younger_sister.png",
      jpName: "Imōto",
      enName: "younger sister",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.green,
          elevation: 0,
          title: Container(
            alignment: Alignment.center,
            child: Text(
              "Family Member",
              style: TextStyle(fontSize: 28),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: famliy.length,
          itemBuilder: (Context, num) {
            return Item(
              number: famliy[num],
              color: Colors.green,
            );
          },
        ));
  }
}
