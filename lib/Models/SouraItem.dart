import 'package:flutter/material.dart';
import 'package:islame_for_my/class/fonts.dart';

class Souraitem extends StatelessWidget {
  String SouraNameAr;

  String SouraNameEn;

  String SouraVarses;

  int index;

  Souraitem({
    super.key,
    required this.SouraNameAr,
    required this.SouraNameEn,
    required this.SouraVarses,
    required this.index,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Stack(
            alignment: Alignment.center,
            children: [Image.asset('assets/Vector.png'), Text('$index',style: fontsApp.boldText20.copyWith(color: Colors.white),)],
          ),
          title: Text('$SouraNameEn',style: fontsApp.boldText20.copyWith(color: Colors.white),),
          subtitle: Text('$SouraVarses',style: fontsApp.boldText20.copyWith(color: Colors.white,fontSize: 14),),
          trailing: Text('$SouraNameAr',style: fontsApp.boldText16.copyWith(color: Colors.white),),
        ),
        Divider(color: Colors.white,endIndent: 40,thickness: 1,indent: 40,)
      ],
    );
  }
}
