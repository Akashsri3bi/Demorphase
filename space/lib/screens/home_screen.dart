import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({
    Key? key,
  }) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  bool clicked = true;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/background.png'))),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 20, left: 250),
        child: Text(
          'JWST LAUNCH OVERVIEW',
          style:
              TextStyle(color: Colors.white, fontFamily: "Lato", fontSize: 20),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 40, left: 30),
        child: clicked
            ? Image.asset(
                'assets/jamestats.png',
                height: 100,
                width: 366,
              )
            : Image.asset(
                'assets/jamestats.png',
                height: 100,
                width: 366,
              ),
      ),
      clicked
          ? Positioned(
              top: 300,
              child: Container(
                color: Colors.transparent,
                height: 200,
                width: 400,
                child: ModelViewer(
                  src: 'assets/james.glb',
                  alt: "A 3D model of an astronaut",
                  autoRotate: true,
                ),
              ),
            )
          : Center(
              child: Container(
                color: Colors.transparent,
                height: 200,
                width: 400,
                child: ModelViewer(
                  src: 'assets/james.glb',
                  alt: "A 3D model of an astronaut",
                  autoRotate: true,
                ),
              ),
            ),
      Align(
        alignment: Alignment.bottomLeft,
        child: InkWell(
          onTap: () {
            setState(() {
              if (clicked) {
                clicked = false;
              } else {
                clicked = true;
              }
            });
          },
          child: Container(
            height: 100,
            width: 150,
            child: clicked
                ? Image.asset('assets/switchin.png')
                : Image.asset('assets/switchout.png'),
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: 220,
          width: 300,
          child: clicked
              ? Image.asset(
                  'assets/jamesdes.png',
                  fit: BoxFit.contain,
                )
              : Image.asset(
                  'assets/jamesdes.png',
                  fit: BoxFit.contain,
                ),
        ),
      ),
    ]);
  }
}
