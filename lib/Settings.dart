import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/Providers/AppConfigLanguage.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();

}

class _SettingsState extends State<Settings> {
static String? selectedLan;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appconfiglanguage>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: DropdownButton<String>(
            hint: Text(AppLocalizations.of(context)!.select_lan),
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
                selectedLan = newValue;
                print(selectedLan);
                provider.AppLanguage =selectedLan.toString();

              });
              },
          ),
        ),
      ],
    );
  }
}
