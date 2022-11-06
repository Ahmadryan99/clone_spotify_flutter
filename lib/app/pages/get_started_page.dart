import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 37),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/wallpaper1.png'),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Spacer(),
            Text('Enjoy listening To musik',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
