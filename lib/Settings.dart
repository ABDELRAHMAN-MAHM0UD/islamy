import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/Providers/AppConfigLanguage.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();

}

class _SettingsState extends State<Settings> {
static String? selectedLan;
static String? selectedTheme;
final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();


  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appconfiglanguage>(context);


    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: DropdownButton<String>(iconSize: 40,
            hint: Text(AppLocalizations.of(context)!.select_lan,
              style:Theme.of(context).textTheme.titleLarge,),
            items: <String>[
              AppLocalizations.of(context)!.lan_En,
              AppLocalizations.of(context)!.lan_ar
            ].map<DropdownMenuItem<String>>((String val) {
              return DropdownMenuItem<String>(
                value: val,
                child: Text(val),
              );
            }).toList(),
            onChanged: (String? newValue) {

              setState(() {
                selectedLan=newValue;
                if(newValue==AppLocalizations.of(context)!.lan_En){
                  provider.AppLanguage="en";

                }
                else if(newValue==AppLocalizations.of(context)!.lan_ar){
                  provider.AppLanguage="ar";
    }
              });
              },
          ),
        ),


        SizedBox(height: MediaQuery.of(context).size.height*.15),


        Center(
          child: DropdownButton<String>(iconSize: 40,
            hint: Text(AppLocalizations.of(context)!.mode,
              style:Theme.of(context).textTheme.titleLarge,),
            items: <String>[
              AppLocalizations.of(context)!.theme_light,
              AppLocalizations.of(context)!.theme_dark
            ].map<DropdownMenuItem<String>>((String val) {
              return DropdownMenuItem<String>(
                value: val,
                child: Text(val),
              );
            }).toList(),
            onChanged: (String? newValue) {

              setState(() {
                selectedTheme=newValue;
                if(newValue==AppLocalizations.of(context)!.theme_light){
                  provider.AppTheme=ThemeMode.light;

                }
                else if(newValue==AppLocalizations.of(context)!.theme_dark){
                  provider.AppTheme=ThemeMode.dark;

                }
              });
              },
          ),
        ),
      ],
    );
  }
}
