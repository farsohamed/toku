import 'package:flutter/material.dart';
import 'package:toku/components/itemphrases..dart';
import 'package:toku/models/number.dart';

class phrases extends StatelessWidget {
  phrases({super.key});

  List<phrasesnumber> phrasesMod = [
    phrasesnumber(
      sound: "sounds/phrases/are_you_coming.wav",
      jpnName: "Kōdoku o wasurenaide kudasai",
      engName: "Dont Forget To Subscribe",
    ),
    phrasesnumber(
      sound: "sounds/phrases/dont_forget_to_subscribe.wav",
      jpnName: "Wasurezu ni kōdoku shite kudasai",
      engName: "Dont Forget To Subscribe",
    ),
    phrasesnumber(
      sound: "sounds/phrases/how_are_you_feeling.wav",
      jpnName: "Go kibun wa ikagadesu ka",
      engName: "How Are You Feeling",
    ),
    phrasesnumber(
      sound: "sounds/phrases/i_love_anime.wav",
      jpnName: "Watashi wa anime ga daisukidesu",
      engName: "I Love Anime",
    ),
    phrasesnumber(
      sound: "sounds/phrases/i_love_programming.wav",
      jpnName: "Puroguramingu ga daisuki",
      engName: "I Love Programming",
    ),
    phrasesnumber(
      sound: "sounds/phrases/programming_is_easy.wav",
      jpnName: "Puroguramingu wa kantandesu",
      engName: "Programming Is Easy",
    ),
    phrasesnumber(
      sound: "sounds/phrases/what_is_your_name.wav",
      jpnName: "Anata no namae wa nandesuka",
      engName: "What Is Your Name",
    ),
    phrasesnumber(
      sound: "sounds/phrases/where_are_you_going.wav",
      jpnName: "Doko ni iku no",
      engName: "Where Are You Going",
    ),
    phrasesnumber(
      sound: "sounds/phrases/yes_im_coming.wav",
      jpnName: "Hai kimasu",
      engName: "Yes Im Coming",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(255, 65, 90, 165),
          elevation: 0,
          title: Container(
            alignment: Alignment.center,
            child: Text(
              "Phrases",
              style: TextStyle(fontSize: 28),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: phrasesMod.length,
          itemBuilder: (Context, num) {
            return ItemPhrases(
              pharses: phrasesMod[num],
              color: Color.fromARGB(255, 65, 90, 165),
            );
          },
        ));
  }
}
