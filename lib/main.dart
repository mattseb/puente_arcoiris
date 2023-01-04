import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:puente_arcoiris/home.dart';
import 'package:puente_arcoiris/login.dart';
import 'package:puente_arcoiris/splash.dart';
import 'package:puente_arcoiris/widget_tree.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Splash(),
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      routes: <String, WidgetBuilder>{
        "/inicio": (BuildContext context) => MyHomePage(title: 'Flutter'),
        "/login": (BuildContext context) => Login(),
        "/home": (BuildContext context) => Home(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //Botones
    final botonLogin = new ElevatedButton(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Icon(Icons.key),
            SizedBox(width: 10),
            Text("LOGIN"),
          ],
        ),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(212, 163, 115, 1),
          elevation: 5,
          shadowColor: Colors.black),
      onPressed: () {
        Navigator.pushNamed(context, "/login");
      },
    );

    final botonTutorial = new ElevatedButton(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Icon(Icons.book_rounded),
            SizedBox(width: 10),
            Text("TUTORIAL"),
          ],
        ),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(212, 163, 115, 1),
          elevation: 5,
          shadowColor: Colors.black),
      onPressed: () {
        Navigator.pushNamed(context, "/login");
      },
    );

    return Scaffold(
        backgroundColor: Color.fromRGBO(254, 246, 234, 1),
        body: Center(child: WidgetTree()));
  }
}
