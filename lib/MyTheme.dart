import 'package:flutter/material.dart';
import 'package:islamy/AppColors.dart';

class Mytheme{

  static final ThemeData lightMode = ThemeData(

    primaryColor: appColors.primaryLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme:const AppBarTheme( backgroundColor:  Colors.transparent,
        centerTitle: true,
        elevation: 0
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 27),
        headlineSmall: TextStyle(fontSize: 27,fontWeight: FontWeight.w600),
        bodyLarge:TextStyle(
          color: Color(0xff242424),
          fontSize: 32,fontWeight: FontWeight.bold,
        ) ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black
    )
  ) ;

}