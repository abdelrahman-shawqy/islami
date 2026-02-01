import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame_for_my/Models/SouraArgments.dart';
import 'package:islame_for_my/class/Colors.dart';
import 'package:islame_for_my/class/fonts.dart';

class souraDetails extends StatefulWidget {
  souraDetails({super.key});

  static const String routeNamed = "souraDetails";

  @override
  State<souraDetails> createState() => _souraDetailsState();
}

class _souraDetailsState extends State<souraDetails> {
  List<String> versess = [];
  List<String> souras = [];
  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments as Souraargments;
    if(versess.isEmpty){
      LodeFile(model.index);
    }
    return Scaffold(
      backgroundColor: colorsApp.backGround,
      appBar: AppBar(
        backgroundColor: colorsApp.backGround,
        iconTheme: IconThemeData(color: colorsApp.primary),
        title: Text(model.souranameEn, style: fontsApp.boldText20),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
            child: Row(
              children: [
                Expanded(
                  child: Image.asset('assets/SouraDet/img_left_corner.png'),
                ),
                SizedBox(width: 70),
                Text(model.souranameAr, style: fontsApp.boldText24),
                SizedBox(width: 70),
                Expanded(
                  child: Image.asset('assets/SouraDet/img_right_corner.png'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: versess.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('${versess[index]}(${index+1})', style: fontsApp.boldText20,textAlign: TextAlign.center,),
                );
              },
            ),
          ),
          Image.asset('assets/Mosque-02.png')

        ],
      ),
    );
  }

  LodeFile(int index) async {
    String souras = await rootBundle.loadString('assets/file/SouraFiles/${index+1}.txt');
    List<String> line = souras.split('\n');
    setState(() {
      versess = line;
    });
  }
}
