import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/default_bg.png"),
        Scaffold(
          appBar: AppBar(
            title: Text("إسلامي",style: Theme.of(context).textTheme.bodyLarge
            ),),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: Color(0xffB7935F
            )),
            child: BottomNavigationBar(items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/radio.png")),
                label: "tab_1"
              ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/sebha.png")),
                label: "tab_2"
              ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/quran-quran-svgrepo-com.png")),
                label: "tab_3"
              ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/quran.png")),
                label: "tab_4"
              ),

            ]
            ),
          ),
          ),
      ]
        );
  }
}
