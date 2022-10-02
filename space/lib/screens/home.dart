import 'package:flutter/material.dart';

import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:space/screens/game_screen.dart';
import 'package:space/screens/home_screen.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 1;
  final pages = [
    const Game_Screen(),
    const Home_Screen(),
    const Home_Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: pages[pageIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 180, right: 180),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 8, 40, 67),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(23), topRight: Radius.circular(23)),
          ),
          height: 64,
          width: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  iconSize: 38,
                  icon: pageIndex == 0
                      ? Image.asset(
                          //On clicked
                          'assets/gameon.png',
                          color: Colors.white,
                        )
                      : Image.asset(
                          'assets/gameoff.png',
                        )),
              IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  padding: EdgeInsets.zero,
                  icon: pageIndex == 1
                      ? Image.asset(
                          //For clicked
                          'assets/overview.png',
                          height: 38,
                        )
                      : Image.asset(
                          'assets/overviewoff.png',
                          height: 38,
                        )),
              IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 2;
                    });
                  },
                  iconSize: 38,
                  icon: pageIndex == 2
                      ? Image.asset(
                          //On clicked
                          'assets/setting.png',
                          color: Colors.white,
                        )
                      : Image.asset(
                          'assets/setting.png',
                        )),
            ],
          ),
        ),
      ),
    );
  }
}
