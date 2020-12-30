
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:metodoloit/pdf%20prova.dart';
import 'listalezioni.dart';
import 'login.dart';
import 'inizio.dart';
import 'Home.dart';
import 'package:splashscreen/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(screen());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Inizio(),
        '/first': (context) => accedi(),
        '/second': (context) => Home(),
        '/third' : (context) => ciao(),
        '/quattro' : (context) => lista() ,
      },
    );
  }
}


class screen extends StatefulWidget {
  @override
  _screenState createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(
        seconds: 1,
        backgroundColor: Colors.black,
        image: Image.asset('images/logoscuro2.png'),
        navigateAfterSeconds: Home(),
        photoSize: 100,
        useLoader: false,
      ),
    );
  }
}
