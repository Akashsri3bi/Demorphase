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
    return clicked
        ? Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/background.png'),
                      fit: BoxFit.fill)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 250),
              child: Text(
                'JWST LAUNCH OVERVIEW',
                style: TextStyle(
                    color: Colors.white, fontFamily: "Lato", fontSize: 20),
              ),
            ),
            Center(
              child: Container(
                color: Colors.transparent,
                height: 200,
                width: 400,
                child: ModelViewer(
                  src: 'assets/james.glb',
                  alt: "A 3D model of James Webb",
                  autoRotate: true,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60),
              child: clicked
                  ? Image.asset(
                      'assets/jamestats.png',
                      height: 150,
                      width: 366,
                    )
                  : Image.asset(
                      'assets/outstats.png',
                      height: 150,
                      width: 366,
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
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 500),
              child: Container(
                height: 300,
                width: 350,
                child: clicked
                    ? Image.asset(
                        'assets/jamesdes.png',
                        fit: BoxFit.fill,
                      )
                    : Image.asset(
                        'assets/outdes.png',
                        fit: BoxFit.fill,
                      ),
              ),
            ),
          ])
        : Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/background.png'),
                      fit: BoxFit.fill)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 250),
              child: Text(
                'JWST LAUNCH OVERVIEW',
                style: TextStyle(
                    color: Colors.white, fontFamily: "Lato", fontSize: 20),
              ),
            ),
            ModelViewer(
              src: 'assets/ship.glb',
              alt: "A 3D model of James Webb Shuttle",
              autoRotate: true,
            ),
            /*Center(
              child: Container(
                  color: Colors.transparent,
                  height: 210,
                  width: 150,
                  child: Image.asset(
                    'assets/shuttle.png',
                    fit: BoxFit.fill,
                  )
                  /*ModelViewer(
                  src: 'assets/ship.glb',
                  alt: "A 3D model of James Webb",
                  autoRotate: true,
                ),*/
                  ),
            ),*/
            Padding(
              padding: EdgeInsets.only(top: 60),
              child: clicked
                  ? Image.asset(
                      'assets/jamestats.png',
                      height: 150,
                      width: 366,
                    )
                  : Image.asset(
                      'assets/outstats.png',
                      height: 150,
                      width: 366,
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
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 500),
              child: Container(
                height: 300,
                width: 350,
                child: clicked
                    ? Image.asset(
                        'assets/jamesdes.png',
                        fit: BoxFit.fill,
                      )
                    : Image.asset(
                        'assets/outdes.png',
                        fit: BoxFit.fill,
                      ),
              ),
            ),
          ]);
  }
}
