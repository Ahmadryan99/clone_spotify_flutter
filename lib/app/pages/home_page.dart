import 'package:clone_spotify_flutter/app/pages/artics_page.dart';
import 'package:clone_spotify_flutter/app/pages/lyrics_page.dart';
import 'package:clone_spotify_flutter/app/pages/music_page.dart';
import 'package:clone_spotify_flutter/app/pages/news_type.dart';
import 'package:clone_spotify_flutter/app/pages/profil_page.dart';
import 'package:clone_spotify_flutter/app/pages/register_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyStatefulWidget(),
      ),
    );
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.search),
                Container(
                  child: SizedBox(
                    width: 140,
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                const Icon(Icons.more_vert),
              ],
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 165,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff42C83C),
                        borderRadius: BorderRadius.all(Radius.circular(32))),
                    height: 130,
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(19),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: const SizedBox(
                            height: 13,
                            width: 62,
                            child: Text(
                              'New Album',
                              style: TextStyle(
                                  fontFamily: 'Satoshi',
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Container(
                          child: const SizedBox(
                            height: 52,
                            width: 147,
                            child: Text(
                              'Happier Than Ever',
                              maxLines: 2,
                              style: TextStyle(
                                  fontFamily: 'Satoshi',
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        Container(
                          child: const SizedBox(
                            height: 18,
                            width: 61,
                            child: Text(
                              'Billie Ellish',
                              style: TextStyle(
                                  fontFamily: 'Satoshi',
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 28,
                  child: Container(
                    height: 183,
                    width: 325,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/wallpaper4.png'),
                      fit: BoxFit.cover,
                    )),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
              height: 25,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  NewsType(
                    newsType: 'News',
                    isSelected: true,
                  ),
                  NewsType(
                    newsType: 'Video',
                    isSelected: false,
                  ),
                  NewsType(
                    newsType: 'Artists',
                    isSelected: false,
                  ),
                  NewsType(
                    newsType: 'Podcast',
                    isSelected: false,
                  ),
                ],
              )),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 245,
            width: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: Image.asset(
                        'assets/images/wallpaper5.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const SizedBox(height: 13),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MusicPage()));
                      },
                      child: Container(
                        child: const Text(
                          'Bad Guy',
                          style: TextStyle(
                              fontFamily: 'Satoshi',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 3),
                    Container(
                      padding: const EdgeInsets.only(left: 0),
                      child: const Text(
                        'Billie Elish',
                        style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: Image.asset(
                        'assets/images/wallpaper6.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const SizedBox(height: 13),
                    Container(
                      child: const Text(
                        'Scorpion',
                        style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 3),
                    Container(
                      padding: const EdgeInsets.only(left: 0),
                      child: const Text(
                        'Drake',
                        style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: Image.asset(
                        'assets/images/wallpaper5.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const SizedBox(height: 13),
                    Container(
                      child: const Text(
                        'WHEN WE ALL FALL ASLEEP,',
                        style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 3),
                    Container(
                      child: const Text(
                        'Billie Elish',
                        style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: const Text(
                    'Playlist',
                    style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  child: const Text(
                    'See More',
                    style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Column(
              children: [
                ListTile(
                    leading: const Icon(Icons.play_arrow_rounded),
                    title: const Text('As It Was'),
                    subtitle: const Text('Harry Styles'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('5:33'),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Image.asset('assets/images/Vector2.png'),
                        )
                      ],
                    )),
                ListTile(
                    leading: const Icon(Icons.play_arrow_rounded),
                    title: const Text('God Did'),
                    subtitle: const Text('DJ Khaled'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('3:43'),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Image.asset('assets/images/Vector2.png'),
                        )
                      ],
                    )),
                ListTile(
                    leading: const Icon(Icons.play_arrow_rounded),
                    title: const Text('As It Was'),
                    subtitle: const Text('Harry Styles'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('5:33'),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Image.asset('assets/images/Vector2.png'),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
     
    );
  }
}
