import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame_for_my/Models/Hadith_Model.dart';
import 'package:islame_for_my/class/Colors.dart';
import 'package:islame_for_my/class/fonts.dart';

class HadithItem extends StatefulWidget {
  HadithItem({super.key, required this.index});

  int index;

  @override
  State<HadithItem> createState() => _HadithItemState();
}

class _HadithItemState extends State<HadithItem> {
  HadithModel? hadith;

  @override
  Widget build(BuildContext context) {
    if (hadith == null) {
      LodeHadithFile(widget.index);
    }
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 11, vertical: 12),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/HadithCardBackGround 1.png')),
        borderRadius: BorderRadius.circular(22),
        color: colorsApp.primary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/left_corner.png'),
                  Image.asset('assets/right_corner.png'),
                ],
              ),
              Text(hadith?.Hider ?? '',style: fontsApp.boldText24.copyWith(color: Colors.black),),
            ],
          ),
          Expanded(
            child: hadith == null
                ? Center(child: CircularProgressIndicator())
                : Center(child: Text(hadith?.contant ?? '',style: fontsApp.boldText16.copyWith(color: Colors.black),)),
          ),
          Image.asset('assets/Mosque-02.png')
        ],
      ),
    );
  }
  void LodeHadithFile(int index) async {
    String FilePath = 'assets/file/HadithFile/h$index.txt';
    String File = await rootBundle.loadString(FilePath);
    List<String> Line = File.split('\n');
    String Hider = Line[0];
    Line.remove([0]);
String contant = Line.join();
    hadith = HadithModel(contant: contant, Hider: Hider);
    setState(() {});
  }
}
