import 'package:clone_spotify_flutter/app/pages/choose_mode_page.dart';
import 'package:clone_spotify_flutter/app/pages/register_page.dart';
import 'package:clone_spotify_flutter/app/pages/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:clone_spotify_flutter/app/pages/dashboard_page.dart';


class ResisterPage extends StatelessWidget {
  const ResisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Positioned(
          bottom: 0,
            left: 0,
            child: Container(
              height: 453,
              width: 332,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/wallpaper3.png'),
                fit: BoxFit.cover,
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(height: 150),
                Container(
                  height: 71,
                  width: 235,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 80),
                const Text(
                  'Enjoy Listening To Music',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(height: 35),
                const Text(
                  'Spotify is a proprietary Swedish audio streaming and media services provider ',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 465,
            left: 35,
            child: Material(
              color: const Color(
                0xff42C83C,
              ),
              borderRadius: BorderRadius.circular(30),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()));
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 147,
                  height: 73,
                  child: const Text('Register',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
          ),
          Positioned(
            top: 465,
            left: 220,
            child: Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInPage()));
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 147,
                  height: 73,
                  child: const Text('Sign In',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
