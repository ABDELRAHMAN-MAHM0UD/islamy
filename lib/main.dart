import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamy/Hadieth/HadiethContent.dart';
import 'package:islamy/HomeScreen.dart';
import 'package:islamy/MyTheme.dart';
import 'package:islamy/Providers/AppConfigLanguage.dart';
import 'package:islamy/Quran/Sura.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';


void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Appconfiglanguage(),
      child:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appconfiglanguage>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("en"), // English
        Locale("ar"), // Arabic
      ],

      locale: Locale(provider.AppLanguage),
      routes: {
        Sura.routeName :(_) => const Sura(),
        Hadiethcontent.routeName :(_) => Hadiethcontent(),
        Homescreen.routeName :(_) => Homescreen(),
      },
      initialRoute: Homescreen.routeName,
      theme: Mytheme.lightMode,
      darkTheme: Mytheme.darkMode,
      themeMode: provider.AppTheme,
      debugShowCheckedModeBanner: false,

    );
  }
}