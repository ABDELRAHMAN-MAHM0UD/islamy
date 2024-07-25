import 'package:flutter/material.dart';
import 'package:islamy/AppColors.dart';
import 'package:islamy/MyTheme.dart';

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
/*
      backgroundColor: Color(0xffB7935F),
*/
      selectedItemColor: Colors.black
    )
  ) ;



  static final ThemeData darkMode = ThemeData(
    primaryColor: appColors.primaryDarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme:const AppBarTheme( backgroundColor:  Colors.transparent,
        centerTitle: true,
        elevation: 0
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 27,color: Colors.white),
        headlineSmall: TextStyle(fontSize: 27,fontWeight: FontWeight.w600,color: Colors.white),
        bodyLarge:TextStyle(
        color: Colors.white,
          fontSize: 32,fontWeight: FontWeight.bold,
        ) ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(

        unselectedItemColor: Colors.white,
      selectedItemColor:Color(0xffFACC1D),
    )
  ) ;

}