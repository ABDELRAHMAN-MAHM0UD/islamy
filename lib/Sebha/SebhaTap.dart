import 'package:flutter/material.dart';
import 'package:islamy/AppColors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/Providers/AppConfigLanguage.dart';
import 'package:provider/provider.dart';


class Sebhatap extends StatefulWidget {
  const Sebhatap({super.key});

  @override
  State<Sebhatap> createState() => _SebhatapState();
}

class _SebhatapState extends State<Sebhatap> {
  int counter = 0 ;
  double Angle = 0.0;
  String text = "سبحان الله";
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appconfiglanguage>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
            onTap: (){
              setState(() {
                Transform.rotate(angle:(Angle+=24.91) );
                counter++;
                for(int i =0 ; i<100 ;i++){
                  if(counter==0){
                    text ="سبحان الله";
                  }
                  if(counter==33){
                    text = "الحمدلله";
                  }
                  else if(counter ==66){
                    text = "الله أكبر";
                  }
                  else if(counter ==100){
                    counter=0;
                  }
                }

              });
            },
            child: Center(child:
            Transform.rotate(
                angle: Angle,
                child:
            Image.asset("assets/images/theSebha.png")))),
        SizedBox(height: 10,),

         Text(AppLocalizations.of(context)!.sebhaCounter,
        style: Theme.of(context).textTheme.titleLarge,),

        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
               color: provider.isDark() ? appColors.GoldenDarkColor:
    appColors.primaryLightColor),
          margin: const EdgeInsets.only(top:35,bottom: 20),
          width: MediaQuery.of(context).size.width*.15,
          height: MediaQuery.of(context).size.width*.15,
          child:
           Center(child: Text("$counter",style: TextStyle(fontSize: 30),))
          ,),
        Container(
        width: MediaQuery.of(context).size.width*.32,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30)
            ,color: provider.isDark() ? appColors.GoldenDarkColor:
        appColors.primaryLightColor
        ),
          child:
           Center(child: Text(text,style: TextStyle(fontSize: 30),))
          ,)
      ],
    );
  }
}
