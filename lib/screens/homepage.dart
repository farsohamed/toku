import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/category.dart';
import 'package:toku/screens/Phrases.dart';
import 'package:toku/screens/color.dart';
import 'package:toku/screens/famliy.dart';
import 'package:toku/screens/numbers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        elevation: 0,
        title: Container(
          alignment: Alignment.center,
          child: Text(
            "ToKu",
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
      body: Column(
        children: [
          Image(image: AssetImage("assets/images/home/unnamed.jpg")),
          category(
            text: "Numbers",
            color: Color.fromARGB(255, 224, 176, 32),
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext Context) {
                return Numpers();
              }));
            },
          ),
          category(
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext Context) {
                    return Famliy();
                  },
                ),
              );
            },
            text: "Family Member",
            color: Colors.green,
          ),
          category(
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext Context) {
                    return Colorpage();
                  },
                ),
              );
            },
            text: "Colors",
            color: Color.fromARGB(255, 192, 138, 81),
          ),
          category(
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext Context) {
                    return phrases();
                  },
                ),
              );
            },
            text: "Phrases",
            color: Color.fromARGB(255, 65, 90, 165),
          ),
        ],
      ),
    );
  }
}
