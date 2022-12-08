import 'package:clone_spotify_flutter/app/pages/register_page.dart';
import 'package:flutter/material.dart';

class ArticsPage extends StatefulWidget {
  const ArticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyStatefulWidget(),
      ),
    );
  }

  @override
  State<ArticsPage> createState() => _ArticsPageState();
}

class _ArticsPageState extends State<ArticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                child: SizedBox(
                  width: 390,
                  height: 240,
                  child: Image.asset(
                    'assets/images/wallpaper10.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: 80,
              width: 100,
              child: Column(
                children: [
                  Container(
                    child: const Text(
                      'Billie eilish',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    child: const Text(
                      '2 album , 67 track',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    child: const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis adipiscing vestibulum orci enim, nascetur vitae ',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 28),
            child: Text(
              'Albums',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height: 17),
          SizedBox(
            height: 174,
            width: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Image.asset(
                        'assets/images/wallpaper11.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const SizedBox(height: 13),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        child: const Text(
                          'lilbubblegum',
                          style: TextStyle(
                              fontFamily: 'Satoshi',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 3),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Image.asset(
                        'assets/images/wallpaper13.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const SizedBox(height: 13),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        child: const Text(
                          'Happier Than Ever',
                          style: TextStyle(
                              fontFamily: 'Satoshi',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Image.asset(
                        'assets/images/wallpaper12.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const SizedBox(height: 13),
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: Container(
                        child: const Text(
                          'dont smile at me,',
                          style: TextStyle(
                              fontFamily: 'Satoshi',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 26),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: const Text(
                    'Songs',
                    style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 16,
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
                    title: const Text(
                      'Dont Smile At Me',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    subtitle: const Text(
                      'Billie Eilish',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
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
                    title: const Text(
                      'lilbubblegum',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    subtitle: const Text(
                      'billie eilish',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
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
                    title: const Text(
                      'As It Was',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    subtitle: const Text(
                      'Harry Styles',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
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
