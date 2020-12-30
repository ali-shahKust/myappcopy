

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'main.dart';
import 'login.dart';
import 'bottone.dart';
import 'package:url_launcher/url_launcher.dart';


class Inizio extends StatefulWidget {
  @override
  _InizioState createState() => _InizioState();
}

class _InizioState extends State<Inizio> {
   User _user;
   @override
   void initState(){
     super.initState();
     _updateUser(FirebaseAuth.instance.currentUser);
   }
   void _updateUser(User user) {
     setState(() {
       _user = user;


     });


   }
  @override
  Widget build(BuildContext context) {
     if (_user != null) {
       return Home();
     }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage('images/logoscuro2.png'),
                height: 170,
                alignment: new Alignment(300.0, 60.0),
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 90.00),
                    child: Text(
                      'Metodo Lit',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 30.0,
                        color: Color.fromRGBO(59, 184, 104, 1.0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Diventa un non fumatore',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      color: Color.fromRGBO(103, 102, 102, 1),
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 150.0,
                    child: Divider(
                      color: Colors.black45,
                    ),
                  ),
                  RoundedButton(
                    title: 'Login',
                    colour: Color.fromRGBO(20, 20, 20, 1),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context){
                            return accedi();
                          },
                        ),
                      );
                    },
                  ),

                  RoundedButton(
                    title: 'Registrati',
                    colour: Color.fromRGBO(20, 20, 20, 1),
                    onPressed: () async {
                      const url = 'https://metodolit.com';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
