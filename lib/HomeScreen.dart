import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int SelectedIndex = 0;

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
            child: BottomNavigationBar(
                currentIndex: SelectedIndex,
                onTap: (index){
                  setState(() {
                    SelectedIndex = index;
                  });
                  },
                items: [
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
