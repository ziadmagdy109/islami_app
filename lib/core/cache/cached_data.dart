import 'package:shared_preferences/shared_preferences.dart';

class CachedData {
  static const String _key = "recents_sura";
  static const int _maxRecentSuras = 5;

  static Future<void> addSura(int suraNumber) async {
    final prefs = await SharedPreferences.getInstance();

    final recent = prefs.getStringList(_key) ?? <String>[];

    recent.remove(suraNumber.toString());
    recent.insert(0, suraNumber.toString());

    final trimmed = recent.take(_maxRecentSuras).toList();

    await prefs.setStringList(_key, trimmed);
  }

  static Future<List<int>> getRecentSuras() async {
    final prefs = await SharedPreferences.getInstance();

    final recent = prefs.getStringList(_key) ?? <String>[];

    return recent.map(int.parse).toList();
  }
}
