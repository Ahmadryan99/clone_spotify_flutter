import 'package:clone_spotify_flutter/app/pages/home_page.dart';
import 'package:clone_spotify_flutter/app/pages/main_page.dart';
import 'package:clone_spotify_flutter/app/pages/register_page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyStatefulWidget(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _isObscure = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 36),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29),
              child: Column(
                children: [
                  const SizedBox(height: 11),
                  Container(
                    height: 33,
                    width: 110,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/logo.png'),
                          fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 80),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('If You Need Any Support'),
                TextButton(
                  child: const Text(
                    'Click Here',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff42C83C)),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  labelText: 'Enter User Name Or Email',
                ),
              ),
            ),
            const SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                child: const Text('Recovery password',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w400)),
              ),
            ),
            const SizedBox(height: 5),
            InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {
               Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MainPage())
                );
              },
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xff42C83C),
                    borderRadius: BorderRadius.all(Radius.circular(28))),
                height: 70,
                width: 100,
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            const SizedBox(height: 21),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10, right: 20),
                    child: const Divider(
                      color: Colors.black,
                      height: 36,
                    ),
                  ),
                ),
                const Text('Or'),
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 10),
                  child: const Divider(
                    color: Colors.black,
                    height: 36,
                  ),
                ))
              ],
            ),
            const SizedBox(height: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset(
                        'assets/images/logo1.png',
                        width: 30,
                        height: 32,
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                  child: Container(
                      padding: const EdgeInsets.all(40),
                      child: Image.asset(
                        'assets/images/logo2.png',
                        width: 29,
                        height: 36,
                        fit: BoxFit.cover,
                      )),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Not A Member ?'),
                TextButton(
                  child: const Text(
                    'Register Now',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff42C83C)),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RegisterPage())); //signup screen
                  },
                )
              ],
            ),
          ],
        ));
  }
}
