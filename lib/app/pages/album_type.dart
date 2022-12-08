import 'package:flutter/material.dart';

class AlbumType extends StatelessWidget {
  final String albumType;
  const AlbumType({required this.albumType});

  @override
  Widget build(BuildContext context) {
    return  ListView(
              scrollDirection: Axis.horizontal,
              children: [
                 Padding(
            padding: const EdgeInsets.only(left: 28, bottom: 356),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: SizedBox(
                    width: 147,
                    height: 185,
                    child: Image.asset(
                      'assets/images/wallpaper5.png',
                      fit: BoxFit.fitWidth,
                    ),
                  
                  ),
                ),
                const SizedBox(height: 13,),
                
                Container(
                  child: SizedBox(
                    width: 140,
                    child: Image.asset(
                      'assets/images/wallpaper6.png',
                      fit: BoxFit.fitWidth,
                    ),
                  
                  ),
                ),
                const SizedBox(height: 13,),
                const Text('Scorpion',
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black
                ),),
                SizedBox(height: 3),
                Container(
                  child: const Text('Drake',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black
                  ),),
                ),
                Container(
                  child: SizedBox(
                    child: Image.asset(
                      'assets/images/wallpaper7.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                const SizedBox(height: 13,),
                const Text('When We All Fall Asleep, Where Do We Go?',
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black
                ),),
                SizedBox(height: 3),
                Container(
                  child: const Text('Billie Elish',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black
                  ),),
                ),
              ],
            ),
          ),
              ],
            );
  }
}