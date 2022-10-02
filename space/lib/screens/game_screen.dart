import 'package:flutter/material.dart';

class Game_Screen extends StatefulWidget {
  const Game_Screen({
    Key? key,
  }) : super(key: key);

  @override
  State<Game_Screen> createState() => _Game_ScreenState();
}

class _Game_ScreenState extends State<Game_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/gamebg.png'), fit: BoxFit.fill)),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/lines.png'), fit: BoxFit.fill)),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              'assets/life.png',
              height: 41,
              width: 246,
            ),
          ),
          InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        elevation: 16,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset('assets/message.png'),
                        ));
                  });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 260, top: 20),
              child: Image.asset(
                'assets/help.png',
                height: 40,
                width: 40,
              ),
            ),
          ),
          /*showDialog(
        context: context,
        builder: (context) {
          return InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/yesg.png'),
          );
        });*/
          Padding(
            padding: const EdgeInsets.only(left: 400),
            child: Image.asset(
              'assets/sun.png',
              height: 100,
            ),
          ),
          Positioned(
            top: 100,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                    iconSize: 60,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              elevation: 16,
                              child: Container(
                                width: 550,
                                height: 307,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.8)),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      'assets/meter1.png',
                                      height: 250,
                                      width: 15,
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/planet1.png',
                                              height: 127,
                                              width: 176,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Column(
                                              children: [
                                                const Text(
                                                  'Neptune',
                                                  style: TextStyle(
                                                      fontSize: 33,
                                                      color: Colors.white),
                                                ),
                                                Row(
                                                  children: [
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    Container(
                                                      height: 18,
                                                      width: 18,
                                                      color: Colors.greenAccent,
                                                    ),
                                                    const SizedBox(
                                                      width: 2,
                                                    ),
                                                    const Text(
                                                      ' Molecular h2',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Container(
                                                      height: 18,
                                                      width: 18,
                                                      color: Colors.white,
                                                    ),
                                                    const SizedBox(
                                                      width: 2,
                                                    ),
                                                    const Text(
                                                      ' Other Gases',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14),
                                                    )
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  height: 18,
                                                  width: 18,
                                                  color: Color.fromARGB(
                                                      255, 190, 173, 21),
                                                ),
                                                const SizedBox(
                                                  width: 2,
                                                ),
                                                const Text(
                                                  ' Methane',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Text(
                                          'HINTS ?',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24),
                                        ),
                                        const Text(
                                          'Neptunes atmosphere is made up mostly of molecular hydrogen, \n atomic helium and methane.',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            const Text(
                                              'IS LIFE AVAILABLE HERE ?',
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.white),
                                            ),
                                            IconButton(
                                                iconSize: 50,
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        return Dialog(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40)),
                                                          elevation: 16,
                                                          child: InkWell(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Image.asset(
                                                                'assets/yesg.png'),
                                                          ),
                                                        );
                                                      });
                                                },
                                                icon: Image.asset(
                                                  'assets/yes.png',
                                                )),
                                            IconButton(
                                                iconSize: 50,
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        return Dialog(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40)),
                                                          elevation: 16,
                                                          child: InkWell(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Image.asset(
                                                                'assets/nog.png'),
                                                          ),
                                                        );
                                                      });
                                                },
                                                icon: Image.asset(
                                                  'assets/no.png',
                                                ))
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    icon: Image.asset(
                      'assets/uranus.png',
                    )),
                const SizedBox(
                  width: 100,
                ),
                IconButton(
                    iconSize: 80,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              elevation: 16,
                              child: Container(
                                width: 550,
                                height: 307,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.8)),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      'assets/meter2.png',
                                      height: 250,
                                      width: 15,
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/planet2.png',
                                              height: 127,
                                              width: 176,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Column(
                                              children: [
                                                const Text(
                                                  'WASP-39 b',
                                                  style: TextStyle(
                                                      fontSize: 33,
                                                      color: Colors.white),
                                                ),
                                                Row(
                                                  children: [
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    Container(
                                                      height: 18,
                                                      width: 18,
                                                      color: Color.fromARGB(
                                                          255, 123, 111, 5),
                                                    ),
                                                    const SizedBox(
                                                      width: 2,
                                                    ),
                                                    const Text(
                                                      ' CO2',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Container(
                                                      height: 18,
                                                      width: 18,
                                                      color: Colors.white,
                                                    ),
                                                    const SizedBox(
                                                      width: 2,
                                                    ),
                                                    const Text(
                                                      ' Other Gases',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Text(
                                          'HINTS ?',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24),
                                        ),
                                        const Text(
                                          'WASP-39 b is a hot gas giant with a mass roughly one-quarter that of Jupiter \n diameter 1.3 times greater than Jupiter',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            const Text(
                                              'IS LIFE AVAILABLE HERE ?',
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.white),
                                            ),
                                            IconButton(
                                                iconSize: 50,
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        return Dialog(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40)),
                                                          elevation: 16,
                                                          child: InkWell(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Image.asset(
                                                                'assets/yesg.png'),
                                                          ),
                                                        );
                                                      });
                                                },
                                                icon: Image.asset(
                                                  'assets/yes.png',
                                                )),
                                            IconButton(
                                                iconSize: 50,
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        return Dialog(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40)),
                                                          elevation: 16,
                                                          child: InkWell(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Image.asset(
                                                                'assets/nog.png'),
                                                          ),
                                                        );
                                                      });
                                                },
                                                icon: Image.asset(
                                                  'assets/no.png',
                                                ))
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    icon: Image.asset('assets/waspb.png')),
                const SizedBox(
                  width: 200,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            elevation: 16,
                            child: Container(
                              width: 550,
                              height: 307,
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.8)),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    'assets/meter4.png',
                                    height: 250,
                                    width: 15,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/planet4.png',
                                            height: 127,
                                            width: 176,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Column(
                                            children: [
                                              const Text(
                                                'Kepler-22b',
                                                style: TextStyle(
                                                    fontSize: 33,
                                                    color: Colors.white),
                                              ),
                                              Row(
                                                children: [
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    height: 18,
                                                    width: 18,
                                                    color: Color.fromARGB(
                                                        255, 193, 174, 6),
                                                  ),
                                                  const SizedBox(
                                                    width: 2,
                                                  ),
                                                  const Text(
                                                    ' Methane',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    height: 18,
                                                    width: 18,
                                                    color: Colors.white,
                                                  ),
                                                  const SizedBox(
                                                    width: 2,
                                                  ),
                                                  const Text(
                                                    ' Other Gases',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14),
                                                  )
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Text(
                                        'HINTS ?',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 24),
                                      ),
                                      const Text(
                                        'Kepler-22b is 2.4 times Earths size and,\n assuming its greenhouse effect is similar to Earths,temperature of 72 degrees Fahrenheit',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          const Text(
                                            'IS LIFE AVAILABLE HERE ?',
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.white),
                                          ),
                                          IconButton(
                                              iconSize: 50,
                                              onPressed: () {
                                                showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return Dialog(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40)),
                                                        elevation: 16,
                                                        child: InkWell(
                                                          onTap: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: Image.asset(
                                                              'assets/yesg2.png'),
                                                        ),
                                                      );
                                                    });
                                              },
                                              icon: Image.asset(
                                                'assets/yes.png',
                                              )),
                                          IconButton(
                                              iconSize: 50,
                                              onPressed: () {
                                                showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return Dialog(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40)),
                                                        elevation: 16,
                                                        child: InkWell(
                                                          onTap: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: Image.asset(
                                                              'assets/nog2.png'),
                                                        ),
                                                      );
                                                    });
                                              },
                                              icon: Image.asset(
                                                'assets/no.png',
                                              ))
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/venus.png'))),
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                IconButton(
                    iconSize: 60,
                    onPressed: () {
                      //Baxa
                    },
                    icon: Image.asset('assets/jupiter.png'))
              ],
            ),
          ),
          Positioned(
            top: 200,
            child: Row(
              children: [
                const SizedBox(
                  width: 200,
                ),
                IconButton(
                    iconSize: 80,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              elevation: 16,
                              child: Container(
                                width: 550,
                                height: 307,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.8)),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      'assets/meter3.png',
                                      height: 250,
                                      width: 15,
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/planet3.png',
                                              height: 127,
                                              width: 176,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Column(
                                              children: [
                                                const Text(
                                                  'LP 890-9b',
                                                  style: TextStyle(
                                                      fontSize: 33,
                                                      color: Colors.white),
                                                ),
                                                Row(
                                                  children: [
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    Container(
                                                        height: 18,
                                                        width: 18,
                                                        color:
                                                            Colors.greenAccent),
                                                    const SizedBox(
                                                      width: 2,
                                                    ),
                                                    const Text(
                                                      ' H2O',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Container(
                                                      height: 18,
                                                      width: 18,
                                                      color: Colors.white,
                                                    ),
                                                    const SizedBox(
                                                      width: 2,
                                                    ),
                                                    const Text(
                                                      ' Other Gases',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Text(
                                          'HINTS ?',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24),
                                        ),
                                        const Text(
                                          'NASAs satellite found planet- LP 890-9b, which is about 30% larger than \n Earth and orbits its sun in just 2.7 days.',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            const Text(
                                              'IS LIFE AVAILABLE HERE ?',
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.white),
                                            ),
                                            IconButton(
                                                iconSize: 50,
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        return Dialog(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40)),
                                                          elevation: 16,
                                                          child: InkWell(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Image.asset(
                                                                'assets/yesg2.png'),
                                                          ),
                                                        );
                                                      });
                                                },
                                                icon: Image.asset(
                                                  'assets/yes.png',
                                                )),
                                            IconButton(
                                                iconSize: 50,
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        return Dialog(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40)),
                                                          elevation: 16,
                                                          child: InkWell(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Image.asset(
                                                                'assets/nog2.png'),
                                                          ),
                                                        );
                                                      });
                                                },
                                                icon: Image.asset(
                                                  'assets/no.png',
                                                ))
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    icon: Image.asset(
                      'assets/neptune.png',
                    )),
                const SizedBox(
                  width: 100,
                ),
                IconButton(
                    iconSize: 40,
                    onPressed: () {
                      //Baxa
                    },
                    icon: Image.asset('assets/earth.png')),
                const SizedBox(
                  width: 200,
                ),
              ],
            ),
          ),
          Positioned(
              top: 70,
              child: Row(
                children: [
                  const SizedBox(
                    width: 500,
                  ),
                  IconButton(
                      iconSize: 300,
                      onPressed: () {
                        //Baxa
                      },
                      icon: Image.asset('assets/telescope.png'))
                ],
              ))
        ],
      ),
    );
  }
}
