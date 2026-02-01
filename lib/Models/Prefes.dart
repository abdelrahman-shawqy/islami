import 'package:shared_preferences/shared_preferences.dart';

class MostRecently {
  void SaveSoura(String key, String Souras) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setStringList('key', [Souras]);
  }

  void getSoura(String key, String Souras) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setStringList('key', [Souras]);
  }
}
