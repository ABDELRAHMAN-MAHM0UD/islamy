import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/Quran/SuraAya.dart';

class Hadiethcontent extends StatelessWidget {
  static const String routeName = "Hadeith Content";

  const Hadiethcontent({super.key});


  @override
  Widget build(BuildContext context) {
    var args = ModalRoute
        .of(context)!
        .settings
        .arguments as elHadiethArgs;

    return Stack(
        children: [
          Image.asset("assets/images/default_bg.png"),
          Scaffold(
              appBar: AppBar(
                  title: Text(args.Hadeith_title, style: Theme
                      .of(context)
                      .textTheme
                      .bodyLarge
                  )
              ),
              body: Container(
                child: Text(
                    args.Hadeith_content,style: Theme.of(context).textTheme.titleLarge ,
                ),
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