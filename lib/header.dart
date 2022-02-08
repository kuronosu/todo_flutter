import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Header extends StatelessWidget {
  Header({Key? key, required this.title}) : super(key: key);
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF302B3B),
                Color(0xFF1C191F),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.clamp)),
      child: Text(title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
          )),
      alignment: const Alignment(-0.9, -0.87),
    );
  }
}
