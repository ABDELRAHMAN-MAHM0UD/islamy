import 'package:flutter/material.dart';

class SuraAya extends StatelessWidget {
String content;
int index;
SuraAya({super.key, required this.content ,required this.index});
  @override
  Widget build(BuildContext context) {
    return
      Text("$content ${index+1}",
        style: Theme.of(context).textTheme.titleLarge,
      textDirection: TextDirection.rtl,);


  }
}
