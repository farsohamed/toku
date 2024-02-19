import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:toku/screens/Phrases.dart';

class ItemPhrases extends StatelessWidget {
  ItemPhrases({super.key, required this.color, required this.pharses});
  final phrasesnumber pharses;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(.5),
      child: Container(
        height: 100,
        color: color,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pharses.engName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 12),
                Text(
                  pharses.jpnName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(pharses.sound));
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          )
        ]),
      ),
    );
  }
}
