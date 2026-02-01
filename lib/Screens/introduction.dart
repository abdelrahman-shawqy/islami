import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islame_for_my/Screens/Home.dart';
import 'package:islame_for_my/class/Colors.dart';
import 'package:islame_for_my/class/fonts.dart';

class introdaction extends StatelessWidget {
  introdaction({super.key});

  List<PageViewModel> listPagesViewModel = [
    PageViewModel(
      titleWidget: Text("Welcome To Islmi App", style: fontsApp.boldText24),
      body: "",
      image: Image.asset('assets/introducton/intro2.png'),
    ),
    PageViewModel(
      titleWidget: Text("Welcome To Islami", style: fontsApp.boldText24),
      bodyWidget: Text(
        "We Are Very Excited To Have You In Our Community",
        style: fontsApp.boldText20,
      ),
      image: Image.asset('assets/introducton/intro3.png'),
    ),
    PageViewModel(
      titleWidget: Text("Reading the Quran", style: fontsApp.boldText24),
      bodyWidget: Text(
        "Read, and your Lord is the Most Generous",
        style: fontsApp.boldText20,
      ),
      image: Image.asset('assets/introducton/intro4.png'),
    ),
    PageViewModel(
      titleWidget: Text("Bearish", style: fontsApp.boldText24),
      bodyWidget: Text(
        "Praise the name of your Lord, the Most High",
        style: fontsApp.boldText20,
      ),
      image: Image.asset('assets/introducton/intro5.png'),
    ),
    PageViewModel(
      titleWidget: Text("Holy Quran Radio", style: fontsApp.boldText24),
      bodyWidget: Text(
        "You can listen to the Holy Quran Radio through the application for free and easily",
        style: fontsApp.boldText20,
      ),
      image: Image.asset('assets/introducton/intro6.png'),
    ),
  ];

  static const String routeNamed = "intro";

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      dotsDecorator: DotsDecorator(
        size: Size(5, 5),
        color: Colors.grey,
        activeSize: Size(20, 10),
        activeColor: colorsApp.primary,
        activeShape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.orangeAccent),
        ),
      ),
      pages: listPagesViewModel,
      controlsPadding: EdgeInsets.symmetric(horizontal: 16),
      globalBackgroundColor: colorsApp.backGround,
      globalHeader: Image.asset('assets/introducton/intro1.png'),
      bodyPadding: EdgeInsets.only(top: 220),
      done: Text("Finish", style: fontsApp.boldText16),
      skip: Text("Skip", style: fontsApp.boldText16),
      back: Text("Back", style: fontsApp.boldText16),
      next: Text("Next", style: fontsApp.boldText16),
      showSkipButton: true,
      showDoneButton: true,
      showBackButton: true,
      showNextButton: true,
      onSkip: () {
        Navigator.pushReplacementNamed(context, HomeScreen.routeNamed);
        },
      onDone: () {
        Navigator.pushNamed(context, HomeScreen.routeNamed);
      },
    );
  }
}
