import 'package:flutter/material.dart';
import 'package:islamy/AppColors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/Providers/AppConfigLanguage.dart';
import 'package:provider/provider.dart';


class Radiotap extends StatelessWidget {
  const Radiotap({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appconfiglanguage>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
  Image.asset("assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png"),
   Text(AppLocalizations.of(context)!.radio,
    style: Theme.of(context).textTheme.titleLarge,),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Icon(Icons.arrow_back_sharp,
        color: provider.isDark() ? appColors.GoldenDarkColor:
        appColors.primaryLightColor
        ,size: 40,),
      Icon(Icons.play_arrow, color: provider.isDark() ? appColors.GoldenDarkColor:
      appColors.primaryLightColor,size: 50),
      Icon(Icons.arrow_forward_sharp, color: provider.isDark() ? appColors.GoldenDarkColor:
      appColors.primaryLightColor,size: 40),
    ],
  )
],
    );
  }
}
