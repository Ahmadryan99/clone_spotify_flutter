import 'package:flutter/material.dart';
import 'package:clone_spotify_flutter/app/pages/register_page.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyStatefulWidget(),
      ),
    );
  }

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.black,
                ),
                Text(
                  'Profile',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                ),
                Icon(Icons.more_vert_rounded)
              ],
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Column(
              children: [
                Container(
                  height: 93,
                  width: 93,
                  child: Image.asset(
                    'assets/images/wallpaper19.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 11),
                Container(
                  child: Text(
                    'oconk.based99@gmail.com',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  child: Text(
                    'Ahmad Ryan',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 58),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        '778',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: 1),
                    Container(
                      child: Text(
                        'Followes',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 58),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        '243',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: 1),
                    Container(
                      child: Text(
                        'Followes',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Text(
              'PUBLIC PLAYLIST',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height: 17),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Column(
              children: [
                ListTile(
                    leading: Image.asset('assets/images/wallpaper14.png'),
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
                          padding: const EdgeInsets.only(left: 44),
                          child: Icon(Icons.more_horiz_rounded),
                        )
                      ],
                    )),
                ListTile(
                    leading: Image.asset('assets/images/wallpaper20.png'),
                    title: const Text(
                      'As It Was',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    subtitle: const Text(
                      'Harry Styles',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('3:43'),
                        Padding(
                          padding: const EdgeInsets.only(left: 44),
                          child: Icon(Icons.more_horiz_rounded),
                        )
                      ],
                    )),
                ListTile(
                    leading: Image.asset('assets/images/wallpaper15.png'),
                    title: const Text('Super Freaky Girl'),
                    subtitle: const Text('Nicki Minaj'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('5:33'),
                        Padding(
                          padding: const EdgeInsets.only(left: 44),
                          child: Icon(Icons.more_horiz_rounded),
                        )
                      ],
                    )),
                ListTile(
                    leading: Image.asset('assets/images/wallpaper16.png'),
                    title: const Text(
                      'Bad Habit',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    subtitle: const Text(
                      'Steve Lacy',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('3:43'),
                        Padding(
                          padding: const EdgeInsets.only(left: 44),
                          child: Icon(Icons.more_horiz_rounded),
                        )
                      ],
                    )),
                ListTile(
                    leading: Image.asset('assets/images/wallpaper17.png'),
                    title: const Text(
                      'Planet Her',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    subtitle: const Text(
                      'Doja Cat',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('3:43'),
                        Padding(
                          padding: const EdgeInsets.only(left: 44),
                          child: Icon(Icons.more_horiz_rounded),
                        )
                      ],
                    )),
                ListTile(
                    leading: Image.asset('assets/images/wallpaper18.png'),
                    title: const Text(
                      'Sweetest Pie',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    subtitle: const Text(
                      'Megan Thee Stallion',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('3:43'),
                        Padding(
                          padding: const EdgeInsets.only(left: 44),
                          child: Icon(Icons.more_horiz_rounded),
                        )
                      ],
                    )),
                ListTile(
                    leading: Image.asset('assets/images/wallpaper20.png'),
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
                          padding: const EdgeInsets.only(left: 44),
                          child: Icon(Icons.more_horiz_rounded),
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
