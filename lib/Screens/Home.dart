import 'package:flutter/material.dart';
import 'package:islame_for_my/class/Colors.dart';
import 'package:islame_for_my/taps/HadethTap.dart';
import 'package:islame_for_my/taps/Qurantap.dart';
import '../taps/Radiotap.dart';
import '../taps/Sebhatap.dart';
import '../taps/Timetap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeNamed = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      backgroundColor: colorsApp.backGround,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            backgroundColor: colorsApp.primary,
            icon: getImageIcon('ic_quran', 0),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            backgroundColor: colorsApp.primary,

            icon: getImageIcon('ic_hadeth', 1),
            label: "Hadith",
          ),
          BottomNavigationBarItem(
            backgroundColor: colorsApp.primary,

            icon: getImageIcon('ic_sebha', 2),
            label: "Sebha",
          ),
          BottomNavigationBarItem(
            backgroundColor: colorsApp.primary,

            icon: getImageIcon('ic_radio', 3),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            backgroundColor: colorsApp.primary,
            icon: getImageIcon('ic_time', 4),
            label: "Time",
          ),
        ],
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: selectedIndex,
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
      ),

      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          taps[selectedIndex],
          Image(image: AssetImage('assets/introducton/intro1.png')),
        ],
      ),
    );
  }

  List<Widget> taps = [
    Qurantap(),
    Hadethtap(),
    Sebhatap(),
    Radiotap(),
    Timetap(),
  ];

  Widget getImageIcon(String Image, int index) {
    return selectedIndex == index
        ? Container(
            width: 59,
            height: 34,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(66),
              color: Color.fromRGBO(32, 32, 32, .6),
            ),
            child: ImageIcon(AssetImage('assets/intro_Icon/$Image.png')),
          )
        : ImageIcon(AssetImage('assets/intro_Icon/$Image.png'));
  }
}
