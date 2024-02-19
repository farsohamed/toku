import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';
import 'package:audioplayers/audioplayers.dart';

class Item extends StatelessWidget {
  Item({super.key, required this.number, required this.color});
  final Number number;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(.5),
      child: Container(
        height: 100,
        color: color,
        child: Row(children: [
          Container(
            color: Color.fromARGB(255, 192, 138, 81),
            child: Image.asset(number.image),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.enName,
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
              player.play(AssetSource(number.sounds));
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
