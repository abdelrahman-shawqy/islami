import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame_for_my/class/Colors.dart';

import '../Models/Hadith_item.dart';

class Hadethtap extends StatefulWidget {
  const Hadethtap({super.key});

  @override
  State<Hadethtap> createState() => _HadethtapState();
}

class _HadethtapState extends State<Hadethtap> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          opacity: 0.6,
          image: AssetImage('assets/taps/Hadithtap.png'),
        ),
      ),
      child:
      Column(
        children: [
          SizedBox(height: 200,),
          CarouselSlider(
            options: CarouselOptions(
              height: 600.0,
              viewportFraction: 0.7,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
            ),
            items: List.generate(50, (index) => index + 1).map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return HadithItem(index: i);
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
