import 'package:flutter/material.dart';
import 'package:islamy/Quran/Sura.dart';

class Suratext extends StatelessWidget {
String name;
int index;
Suratext({super.key, required this.name ,required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

        Navigator.of(context).pushNamed(Sura.routeName,
            arguments: SuraArgs(
                name: name,
                index: index
            )
        );
      },
      child: Text(name,
        style: Theme.of(context).textTheme.titleLarge,textAlign: TextAlign.center,),
    );
  }
}
