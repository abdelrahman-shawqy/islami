import 'package:flutter/material.dart';

class Radiotap extends StatelessWidget {
  const Radiotap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/taps/Radiotap.png'),fit: BoxFit.cover,opacity: 0.4)));
  }
}
