import 'package:flutter/material.dart';

class Appconfiglanguage extends ChangeNotifier {

  String AppLanguage = "ar";

  void ChangeLanguage(String newLanguage){
    if(newLanguage==AppLanguage){
      return ;
    }
    AppLanguage = newLanguage;
    notifyListeners();
  }
}
