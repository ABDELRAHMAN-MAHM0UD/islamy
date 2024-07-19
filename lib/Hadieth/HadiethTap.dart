import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/AppColors.dart';
import 'package:islamy/Hadieth/HadiethContent.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Hadiethtap extends StatefulWidget {
  const Hadiethtap({super.key});

  @override
  State<Hadiethtap> createState() => _HadiethtapState();
}

class _HadiethtapState extends State<Hadiethtap> {
  List<Hadeeth> Ahadieth = [];

  @override
  Widget build(BuildContext context) {
    if (Ahadieth.isEmpty) {
      getHadieth();
    }
    return Column(
      children: [
        Image.asset("assets/images/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon.png"),
        Divider(
          thickness: 4,
          color: appColors.primaryLightColor,
        ),
        Text(AppLocalizations.of(context)!.hadieth, style: Theme.of(context).textTheme.headlineSmall),
        Divider(
          thickness: 4,
          color: appColors.primaryLightColor,
        ),
        Expanded(
          child: Ahadieth.isEmpty
              ? Center(
            child: CircularProgressIndicator(
              color: appColors.primaryLightColor,
            ),
          )
              : ListView.separated(
            itemCount: Ahadieth.length,
            separatorBuilder: (context, index) {
              return Divider(
                thickness: 2,
                color: appColors.primaryLightColor,
              );
            },
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    Hadiethcontent.routeName,
                    arguments: elHadiethArgs(Hadeith_title: Ahadieth[index].title,
                        Hadeith_content: Ahadieth[index].content),
                  );
                },
                child: Text(
                  Ahadieth[index].title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void getHadieth() async {
    String Hadieth = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> HadiethContent = Hadieth.split('#\r\n');
    for (int i = 0; i < HadiethContent.length; i++) {
      List<String> lines = HadiethContent[i].split('\n');
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join('\n');
      Hadeeth hadeeth = Hadeeth(title: title, content: content);
      Ahadieth.add(hadeeth);
      setState(() {});
    }
  }
}

class Hadeeth {
  String title;
  String content;
  Hadeeth({required this.title, required this.content});
}
