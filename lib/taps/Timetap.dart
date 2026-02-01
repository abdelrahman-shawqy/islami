import 'package:flutter/material.dart';

class Timetap extends StatelessWidget {
  const Timetap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/taps/Timetap.png'),fit: BoxFit.cover,opacity: 0.4)),);
  }
}
