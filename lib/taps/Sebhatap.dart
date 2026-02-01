import 'package:flutter/material.dart';

import '../class/fonts.dart';

class Sebhatap extends StatefulWidget {
  Sebhatap({super.key});

  @override
  State<Sebhatap> createState() => _SebhatapState();
}

class _SebhatapState extends State<Sebhatap> {
  double turns = 0.0;
  int counter = 0;
  int index=0;
  List<String> Sebha = [
    'سبحان الله',      // 33 مرة
    'الحمد لله',       // 33 مرة
    'لا إله إلا الله', // 33 مرة
    'الله أكبر',       // 33 مرة
    'سبحان الله وبحمده',
    'سبحان الله العظيم',
    'لا حول ولا قوة إلا بالله',
    'أستغفر الله',
    'اللهم صلِّ على محمد',
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/taps/Sebhatap.png'),
          fit: BoxFit.cover,
          opacity: 0.4,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 217),
            Image.asset('assets/SebhaTap/سَبِّحِ اسْمَ رَبِّكَ الأعلى.png'),
            SizedBox(height: 17),
            Image.asset(
              'assets/SebhaTap/Mask group.png',
              fit: BoxFit.cover,
              width: 73,
              height: 86,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                AnimatedRotation(

                  turns: turns,
                  duration: Duration(milliseconds: 500),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        turns += 1 / 33;
                        counter++;
                        if (counter == 3) {
                          counter = 0;
                          index = (index + 1) %  Sebha.length;

                        }
                      });
                    },
                    child: Image.asset(
                      'assets/SebhaTap/SebhaBody 1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 20),

                    Text(
                      Sebha[index],
                      style: fontsApp.boldText24.copyWith(
                        color: Colors.white,
                        fontSize: 36,
                      ),
                    ),
                    Text(
                      '$counter',
                      style: fontsApp.boldText24.copyWith(
                        color: Colors.white,
                        fontSize: 36,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
