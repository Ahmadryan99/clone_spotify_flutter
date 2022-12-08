import 'package:clone_spotify_flutter/app/pages/resister_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 37),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/wallpaper2.png'),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29.0),
          child: Column(
            children: [
              const SizedBox(height: 11),
              Container(
                height: 60,
                width: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.cover),
                ),
              ),
              const Spacer(),
              const Text('Choose Mode',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  )),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[800],
                        ),
                          child: Image.asset(
                            'assets/images/Vector1.png',
                            width: 24,
                            height: 29,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        const Text('Dark Mode',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),),
                    ],
                  ),
                  const SizedBox(
                    width: 71,
                  ),
                   Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[800],
                        ),
                          child: Image.asset(
                            'assets/images/Vector.png',
                            width: 24,
                            height: 29,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        const Text('light Mode',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              Material(
                color: const Color(
                  0xff42C83C,
                ),
                borderRadius: BorderRadius.circular(30),
                child: InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ResisterPage())
                );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    height: 92,
                    child: const Text('Continue',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
