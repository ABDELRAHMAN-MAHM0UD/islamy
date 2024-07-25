import 'package:flutter/material.dart';
import 'package:islamy/AppColors.dart';
import 'package:islamy/Providers/AppConfigLanguage.dart';
import 'package:provider/provider.dart';


class SuraAya extends StatelessWidget {
String content;
int index;
SuraAya({super.key, required this.content ,required this.index});
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appconfiglanguage>(context);

    return
      Text("$content ${index+1}",
        style:
        provider.isDark()?
        Theme.of(context).textTheme.bodyLarge?.copyWith(color: appColors.GoldenDarkColor):
        Theme.of(context).textTheme.bodyLarge,      textDirection: TextDirection.rtl,);


  }
}
