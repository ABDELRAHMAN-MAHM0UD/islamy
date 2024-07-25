import 'package:flutter/material.dart';
import 'package:islamy/AppColors.dart';
import 'package:islamy/Hadieth/HadiethTap.dart';
import 'package:islamy/Providers/AppConfigLanguage.dart';
import 'package:islamy/Quran/QuranTap.dart';
import 'package:islamy/Radio/RadioTap.dart';
import 'package:islamy/Sebha/SebhaTap.dart';
import 'package:islamy/Settings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';


class Homescreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int SelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appconfiglanguage>(context);
    return Stack(
      children: [
        provider.isDark()?
        Image.asset("assets/images/dark_bg.png"):
        Image.asset("assets/images/default_bg.png"),
        Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.app_Title,
                style: Theme.of(context).textTheme.bodyLarge
            ),),
          bottomNavigationBar: Theme(
            data:
            provider.isDark()?
            Theme.of(context).copyWith(canvasColor: Color(0xff141A2E)):
            Theme.of(context).copyWith(canvasColor: Color(0xffB7935F)),
            child: BottomNavigationBar(
                currentIndex: SelectedIndex,
                onTap: (index){
                  setState(() {
                    SelectedIndex = index;
                  });
                  },
                items:  [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/radio.png")),
                label: AppLocalizations.of(context)!.radio
              ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                label: AppLocalizations.of(context)!.sebha
              ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran-quran-svgrepo-com.png")),
                label: AppLocalizations.of(context)!.hadieth
              ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran.png")),
                label: AppLocalizations.of(context)!.quran
              ), 
              BottomNavigationBarItem(icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settings
              ),
            ]
            ),

          ),
          body: taps[SelectedIndex],
          ),
      ]
        );
  }
  List<Widget>taps= [
    const Radiotap(),const Sebhatap(),const Hadiethtap(),const Qurantap(), Settings()
  ];
}
