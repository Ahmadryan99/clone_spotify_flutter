import 'package:flutter/material.dart';

class LyricsPage extends StatefulWidget {
  const LyricsPage({super.key});

  @override
  State<LyricsPage> createState() => _LyricsPageState();
}

class _LyricsPageState extends State<LyricsPage> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/wallpaper8.png',
                    ),
                    fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.5),
                    ])),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.arrow_back_ios_new_sharp,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              child: const Text(
                                'Bad Guy',
                                style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.more_vert_sharp,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            ListView(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 45, vertical: 60),
                  child: Text(
                    ' ( Verse 1 )',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 62),
                  child: Text(
                    "Sleepin', you're on your tippy toes Creepin' around like no one knows Think you're so criminal Bruises on both my knees for you Don't say thank you or please I do what I want when I'm wanting to My soul? So cynical ",
                    style: TextStyle(
                        letterSpacing: 2,
                        wordSpacing: 5,
                        height: 3,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white30),
                  ),
                ),
              ],
            ),
            Positioned(right: 0, left: 0, bottom: 0, child: controlMusic),
          ],
        ));
  }

  Widget get controlMusic {
    return Container(
      height: 250,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 0),
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(10),
            title: const Text(
              'Bad Guy',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            subtitle: const Text(
              'Billie Eilish',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            leading: Container(
              child: const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(
                    'assets/images/wallpaper8.png',
                  )),
            ),
            trailing: Image.asset('assets/images/Vector2.png'),
          ),
          const SizedBox(height: 0),
          Slider(
            activeColor: const Color(0xff5C5C5C),
            value: _currentSliderValue,
            min: 0,
            max: 200,
            onChanged: (value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '2;25',
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  '4:02',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 45, right: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const InkWell(
                    child: Icon(
                  Icons.repeat,
                  color: Colors.black,
                  size: 30,
                )),
                const InkWell(
                    child: Icon(
                  Icons.skip_previous_rounded,
                  color: Colors.black,
                  size: 30,
                )),
                InkWell(
                  child: Container(
                    height: 51,
                    width: 51,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff42C83C),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.pause,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const InkWell(
                    child: Icon(
                  Icons.skip_next_rounded,
                  color: Colors.black,
                  size: 30,
                )),
                const InkWell(
                    child: Icon(
                  Icons.shuffle_sharp,
                  color: Colors.black,
                  size: 30,
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
