import 'package:flutter/material.dart';

import 'package:model_viewer_plus/model_viewer_plus.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 0;
  final pages = [
    const Home_Screen(),
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
                  padding: EdgeInsets.zero,
                  icon: pageIndex == 0
                      ? Image.asset(
                          //For clicked
                          'assets/overview.png',
                          height: 38,
                        )
                      : Image.asset(
                          'assets/overview.png',
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
                          'assets/overview.png',
                          color: Colors.white,
                        )
                      : Image.asset(
                          'assets/overview.png',
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
                          'assets/overview.png',
                          color: Colors.white,
                        )
                      : Image.asset(
                          'assets/overview.png',
                        )),
            ],
          ),
        ),
      ),
    );
  }
}

class Home_Screen extends StatelessWidget {
  const Home_Screen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Center(
        child: Container(
          color: Colors.transparent,
          height: 200,
          width: 200,
          child: ModelViewer(
            src: 'assets/james.glb',
            alt: "A 3D model of an astronaut",
            autoRotate: true,
          ),
        ),
      ),
    ]);
  }
}
