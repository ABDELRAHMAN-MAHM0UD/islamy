import 'package:flutter/material.dart';
import 'package:islamy/AppColors.dart';
import 'package:islamy/Quran/SuraText.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



class Qurantap extends StatelessWidget {

  static List<String> SuraName = ["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  const Qurantap({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Image.asset("assets/images/QuramLogo.png"),
            Divider(
              thickness: 4,
              color: appColors.primaryLightColor,
            ),
            Text(AppLocalizations.of(context)!.sura_Name,style: Theme.of(context).textTheme.headlineSmall,),
            Divider(
              thickness: 4,
              color: appColors.primaryLightColor,
            ),
          Expanded(
            child: ListView.separated(

              separatorBuilder: (context, index) {
                return  Divider(
                  thickness: 2,
                  color: appColors.primaryLightColor,
                );
              },
              itemBuilder: (context, index) {
                return Suratext(name: SuraName[index], index: index);
              },
              itemCount: SuraName.length,
            ),
          )
          ],
    );
  }
}
