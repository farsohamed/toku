import 'package:flutter/material.dart';

class category extends StatelessWidget {
  category({this.text, this.color, this.ontap});

  String? text;
  Color? color;
  Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.centerLeft,
        color: color,
        width: double.infinity,
        height: 100,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            text!,
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
