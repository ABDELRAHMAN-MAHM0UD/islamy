import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/AppColors.dart';
import 'package:islamy/Providers/AppConfigLanguage.dart';
import 'package:islamy/Quran/SuraAya.dart';
import 'package:provider/provider.dart';

class Hadiethcontent extends StatelessWidget {

  static const String routeName = "Hadeith Content";

  const Hadiethcontent({super.key});


  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appconfiglanguage>(context);

    var args = ModalRoute
        .of(context)!
        .settings
        .arguments as elHadiethArgs;

    return Stack(
        children: [
          provider.isDark()?
          Image.asset("assets/images/dark_bg.png"):
          Image.asset("assets/images/default_bg.png"),          Scaffold(
              appBar: AppBar(
                  title: Text(args.Hadeith_title, style:  provider.isDark()?
                  Theme.of(context).textTheme.bodyLarge?.copyWith(color: appColors.GoldenDarkColor):
                  Theme.of(context).textTheme.bodyLarge,)
              ),
              body: Container(
                child: Text(
                    args.Hadeith_content,style:
                provider.isDark()?
                Theme.of(context).textTheme.bodyLarge?.copyWith(color: appColors.GoldenDarkColor):
                Theme.of(context).textTheme.bodyLarge,                ),
              )
          )
        ]
    );
  }
}
class elHadiethArgs{
  String Hadeith_title;
  String Hadeith_content;
  elHadiethArgs({required this.Hadeith_title, required this.Hadeith_content});
}