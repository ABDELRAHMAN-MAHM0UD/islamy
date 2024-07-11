import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:islamy/AppColors.dart';

class Mytheme{

  static final ThemeData lightMode = ThemeData(

    primaryColor: appColors.primaryLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme:AppBarTheme( backgroundColor:  Colors.transparent,
        centerTitle: true,
        elevation: 0
    ),
    textTheme: TextTheme(
        bodyLarge:TextStyle(
          color: Color(0xff242424),
          fontSize: 30,fontWeight: FontWeight.bold,
        ) ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black
    )
  ) ;

}