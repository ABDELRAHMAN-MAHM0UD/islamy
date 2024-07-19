import 'package:flutter/material.dart';
import 'package:islamy/AppColors.dart';

class Radiotap extends StatelessWidget {
  const Radiotap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
  Image.asset("assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png"),
  const Text("إذاعة القرآن الكريم",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Icon(Icons.arrow_back_sharp,color: appColors.primaryLightColor,size: 40,),
      Icon(Icons.play_arrow,color: appColors.primaryLightColor,size: 50),
      Icon(Icons.arrow_forward_sharp,color: appColors.primaryLightColor,size: 40),
    ],
  )
],
    );
  }
}
