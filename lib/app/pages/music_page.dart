import 'package:clone_spotify_flutter/app/pages/lyrics_page.dart';
import 'package:clone_spotify_flutter/app/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyStatefulWidget(),
      ),
    );
  }

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  PanelController _panelController = PanelController();
  double _currentSliderValue = 20;
  void togglePanel() => _panelController.isPanelOpen ? 
  _panelController.close() : 
  _panelController.open();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SlidingUpPanel(
        parallaxEnabled: true,
        controller: _panelController,
        maxHeight: size.height,
        minHeight: size.height * 0.1,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 36),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back_ios_new_sharp),
                  Container(
                    child: const Text(
                      'Now Playing',
                      style: TextStyle(
                          fontFamily: 'Satoshi',
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  const Icon(Icons.more_vert),
                ],
              ),
            ),
            const SizedBox(height: 0),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: SizedBox(
                    width: 370,
                    height: 355,
                    child: Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/images/wallpaper8.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 28, vertical: 0),
                  child: Column(
                    children: [
                      ListTile(
                        title: Container(
                            child: const Text(
                          'Bad Guy',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontFamily: 'Satoshi'),
                        )),
                        subtitle: Container(
                            child: const Text(
                          'Billie Eilish',
                          style: TextStyle(
                              fontFamily: 'Satoshi',
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        )),
                        trailing: Image.asset('assets/images/Vector2.png'),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Slider(
                    activeColor: const Color(0xff5C5C5C),
                    value: _currentSliderValue,
                    min: 0,
                    max: 200,
                    onChanged: (value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    }),
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
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 45, right: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          child: Icon(
                        Icons.repeat,
                        color: Colors.black,
                        size: 30,
                      )),
                      InkWell(
                          child: Icon(
                        Icons.skip_previous_rounded,
                        color: Colors.black,
                        size: 30,
                      )),
                      InkWell(
                        child: Container(
                          height: 72,
                          width: 72,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff42C83C),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.pause,
                              size: 28,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                          child: Icon(
                        Icons.skip_next_rounded,
                        color: Colors.black,
                        size: 30,
                      )),
                      InkWell(
                          child: Icon(
                        Icons.shuffle_sharp,
                        color: Colors.black,
                        size: 30,
                      )),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        panel: Center(
          child: GestureDetector(
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 10,
                    width: 30,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Vector7.png'))),
                  ),
                  SizedBox(height: 12),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LyricsPage()));
                    },
                    child: Center(
                    child: Text('Lyrics',
                      style: TextStyle(fontSize: 14,),
                    ),
                  ),
                  ),
                 
                ],
              ),
            ),
          ),
          
        ),
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
    );
  }
}
