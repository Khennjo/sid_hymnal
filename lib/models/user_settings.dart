import 'package:sid_hymnal/common/shared_methods.dart';

class UserSettings {
  int _lastHymn = 1;
  int _fontSize = 16;
  String _nightMode = "auto";
  String _language = "en";
  UserSettings();

  int getFontSize() {
    return this._fontSize;
  }

  String getNightMode() {
    return this._nightMode;
  }

  int getLastHymnNumber() {
    return this._lastHymn;
  }

  String getLanguage() {
    return this._language;
  }

  setLanguage(String lang) async {
    await saveLastLanguage(lang);
    this._language = lang;
  }

  setLastHymnNumber(int hymnNumber) {
    this._lastHymn = hymnNumber;
  }

  setFontSize(int size) {
    this._fontSize = size;
  }
  
  setNightMode(String setting) {
    saveNightModeState(setting);
    this._nightMode = setting;
  }

  @override
  String toString() {
    return {
      "lastHymn":this._lastHymn,
      "language":this._language,
      "fontSize":this._fontSize,
      "nightMode":this._nightMode
    }.toString();
  }
}
