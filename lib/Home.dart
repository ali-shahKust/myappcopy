import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:metodoloit/altrobotton.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'listalezioni.dart';
import 'inizio.dart';



class Home extends StatefulWidget {
  static int ciaz=0;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Metodo Lit", style: TextStyle(
            color: Color.fromRGBO(49, 184, 109, 1),
          )),
          backgroundColor: Color.fromRGBO(30, 30, 30, 1),


    ),
            drawer: Theme(
            data: Theme.of(context).copyWith(
    canvasColor:  Color.fromRGBO(0, 0, 0, 1), //This will change the drawer background to blue.
    //other styles
    ),
    child: Drawer(
    child: ListView(
    children: <Widget>[


      ListTile(
      title: Text('Item 1'),
      onTap: () {
        // Update the state of the app
        // ...
        // Then close the drawer
        Navigator.pop(context);
      },
    ),
      ListTile(
        title: Text('Item 2'),
        onTap: () {
          // Update the state of the app
          // ...
          // Then close the drawer
          Navigator.pop(context);
        },
      ),
      FlatButton(
          padding: EdgeInsets.only(right: 240.0

          ),

          child: Text(
            'Esci',
              style: TextStyle(
                color: Color.fromRGBO(227, 230, 234, 1),
              )

          ),
          onPressed: () async {
            await FirebaseAuth.instance.signOut();
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context){
                  return Inizio();
                },
              ),
            );
          }
      ),

    //drawer stuffs
    ],
    ),
    ),


),

    body: SingleChildScrollView(
      child: SafeArea(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Stack(
          children: [
            Container(
              height: 100,

            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(bottomLeft:  Radius.circular(20),
              bottomRight: Radius.circular(20) ),


            ),
              child: Align(
                alignment: Alignment(-0.93, 0.001),
                child: Text("Home",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    fontFamily: " FrankRuhlLibre",

                  ),

                ),
              ),
      ),

          ],
        ),



        Container(
          margin: EdgeInsets.only(top: 35.00),
          child: Align(
            alignment: Alignment(-0.68, 2.7),
            child: Text("Istruzioni",
              style: TextStyle(

                color: Colors.white,
                fontSize: 20,

                fontFamily: " FrankRuhlLibre",

              ),

            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context){
                  return lista();

                },

              ),
            );

          },
          child:
          Image(
            image: AssetImage('images/ciao2.png'),
            height: 248,
            alignment:  Alignment(600.0, 600.0),
          ),
        ),

        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.only(top: 0.00),
          child: Align(
            alignment: Alignment(-0.68, 1.5),
            child: Text("Metodo Lit",
              style: TextStyle(
                color: Color.fromRGBO(249, 249, 249, 1),
                fontSize: 20,

                fontFamily: " FrankRuhlLibre",

              ),

            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
            MaterialPageRoute(
              builder: (context){
                return lista();

              },

            ),
          );

          },
          child:
      Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.only(top: 0.00),
      child:
      Image(
      image: AssetImage('images/rotonda.png'),
      height: 250,
      alignment:  Alignment(600.0, 600.0),
      ),
      ),
        ),




        ],
      ),
    ),
    ),


    );
  }


}



