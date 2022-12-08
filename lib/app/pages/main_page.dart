import 'package:clone_spotify_flutter/app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:clone_spotify_flutter/app/pages/artics_page.dart';
import 'package:clone_spotify_flutter/app/pages/lyrics_page.dart';
import 'package:clone_spotify_flutter/app/pages/profil_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _pages = [
    const HomePage(),
    const LyricsPage(),
    const ArticsPage(),
    const ProfilPage(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.black,
        selectedItemColor:  const Color(0xff42C83C),
        items: const [
          BottomNavigationBarItem(
            
            label: '',
            icon: ImageIcon(AssetImage('assets/images/Vector3.png'),
                ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: ImageIcon(AssetImage('assets/images/Vector4.png'),
                ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: ImageIcon(AssetImage('assets/images/Vector5.png'),
                ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: ImageIcon(AssetImage('assets/images/Vector6.png'),
                ),
          ),
        ],
      ),
    );
  }
}
