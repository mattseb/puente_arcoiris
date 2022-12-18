import 'package:flutter/material.dart';
import 'package:puente_arcoiris/main.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetoHome();
  }

  _navigatetoHome() async {
    await Future.delayed(Duration(milliseconds: 1500), (() {}));
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => MyHomePage(title: 'Splash')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(254, 246, 234, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/logo.png'),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              height: 25,
              child: Text(
                'Puente Arcoiris',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(249, 142, 44, 1),
                    fontSize: 20,
                    fontFamily: "Inter",
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
