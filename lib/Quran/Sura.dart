import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/AppColors.dart';
import 'package:islamy/Providers/AppConfigLanguage.dart';
import 'package:islamy/Quran/SuraAya.dart';
import 'package:provider/provider.dart';

class Sura extends StatefulWidget {
  static const String routeName ="Sura";

  const Sura({super.key});

  @override
  State<Sura> createState() => _SuraState();
}

class _SuraState extends State<Sura> {
  List<String>SuraList = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appconfiglanguage>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    if (SuraList.isEmpty) {
      getFile(args.index);
    }
    return Stack(
        children: [
          provider.isDark()?
          Image.asset("assets/images/dark_bg.png"):
          Image.asset("assets/images/default_bg.png"),
          Scaffold(
    appBar: AppBar(
    title: Text(args.name,style:
    provider.isDark()?
    Theme.of(context).textTheme.bodyLarge?.copyWith(color: appColors.GoldenDarkColor):
    Theme.of(context).textTheme.bodyLarge,
    )
    ),
      body:
      SuraList.isEmpty?
          Center(child: CircularProgressIndicator(color: appColors.primaryLightColor,
          ))
      :
      Container(margin: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
          itemBuilder: (context, index) {
          return SuraAya(content: SuraList[index],index: index);
        },
          itemCount: SuraList.length,
        ),
      ),
      )
          ,]
    );
  }

  void getFile(int index)async{
    String theFile = await rootBundle.loadString("assets/files/${index+1}.txt");
    List<String> Ffile = theFile.split('index');
    SuraList =Ffile;
   setState(() {

   });
  }
}

class SuraArgs{
  String name;
  int index;
  SuraArgs({required this.name,required this.index});
}
