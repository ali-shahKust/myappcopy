import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:metodoloit/main.dart';
import 'package:metodoloit/pdf%20prova.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Home.dart';
import 'bottone.dart';
import 'pdf prova.dart';

import 'altrobotton.dart';
import 'inizio.dart';

class lista extends StatefulWidget {



  @override
  listaState createState() => listaState();
}

class listaState extends State<lista> {



  static var indice = 0;
  static bool ciau = false;
  static bool men = false;
  static bool men1 = false;
  static bool men2 = false;
  static bool men3 = false;
  static bool men4 = false;
  static bool men5 = false;
  static bool men6 = false;
  static bool men7 = false;
  static bool men8 = false;
  static bool men9 = false;
  static bool men10 = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getBoolValuesSF();
    getMode1();getMode2();getMode3();getMode4();getMode5();getMode6();getMode7();getMode8();getMode9();getMode10();
  }
@override
  Widget build(BuildContext context) {
  getBoolValuesSF();

  getMode1();getMode2();getMode3();getMode4();getMode5();getMode6();getMode7();getMode8();getMode9();getMode10();
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 41, 42, 1),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context){
                  return Home();
                },
              ),
            );
          },
        ),
        centerTitle: true,
        title: Text("Metodo Lit", style: TextStyle(
          color: Color.fromRGBO(49, 184, 109, 1),
        )),
        backgroundColor: Color.fromRGBO(58, 59, 60, 1),



      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [


                SizedBox(
                  height: 40.0,
                  width: 20.0,
                ),

                Align(
                  alignment: Alignment(-0.80, 0.0),
                  child: Container(
                    child: Text('Percorso\nMetodo Lit',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: "FrankRuhlLibre",
                        fontSize: 40,
                      ),

                    ),

                  ),
                ),

                SizedBox(
                  height: 40.0,
                  width: 20.0,
                ),
                Stack(
                  children: [
                    Row(
                      children: [
                        RoundedButto(
                          bool: men,
                            title: '-Introduzione',

                            colour: Color.fromRGBO(58, 59, 60, 1),
                            onPressed: () {
                              indice = 0;
                              Navigator.push(context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ciao();
                                  },
                                ),
                              );
                            }



                        ),
                      ],
                    ),

                  ],
                ),


                RoundedButto(
                    bool: men1,
                      title: '-Modulo 1: La relazione fra il fumo e la tua mente',
                      colour: Color.fromRGBO(58, 59, 60, 1),
                      onPressed: () {

                        indice = 1;
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ciao();
                            },
                          ),
                        );
                      }


                  ),





                RoundedButto(
                    bool: men2,
                    title: '-Modulo 2: Essere un fumatore',
                    colour: Color.fromRGBO(58, 59, 60, 1),
                    onPressed: () {
                      indice = 2;
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ciao();
                          },
                        ),
                      );
                    }


                ),

                RoundedButto(
                    bool: men3,
                    title: '-Modulo 3: Ciò a cui credi è falso',
                    colour: Color.fromRGBO(58, 59, 60, 1),
                    onPressed: () {
                      indice = 3;
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ciao();
                          },
                        ),
                      );
                    }


                ),
                RoundedButto(
                    bool: men4,
                    title: '-Modulo 4: Essere non fumatore',
                    colour: Color.fromRGBO(60, 63, 65, 1),
                    onPressed: () {
                      indice = 4;
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ciao();
                          },
                        ),
                      );
                    }


                ),
                RoundedButto(
                    bool: men5,
                    title: '-Modulo 5: Diventare non fumatore',
                    colour: Color.fromRGBO(58, 59, 60, 1),
                    onPressed: () {
                      indice = 5;
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ciao();
                          },
                        ),
                      );
                    }


                ),
                RoundedButto(
                    bool: men6,
                    title: '-Modulo 6: Consigli ed extra',
                    colour: Color.fromRGBO(58, 59, 60, 1),
                    onPressed: () {
                      indice = 6;
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ciao();
                          },
                        ),
                      );
                    }


                ),

                RoundedButto(
                    bool: men7,
                    title: '-Modulo 7: Mappa complessiva',
                    colour: Color.fromRGBO(58, 59, 60, 1),
                    onPressed: () {
                      indice = 7;
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ciao();
                          },
                        ),
                      );
                    }


                ),
                RoundedButto(
                    bool: men8,
                    title: '-Modulo 8: Bonus numero 1 ',
                    colour: Color.fromRGBO(58, 59, 60, 1),
                    onPressed: () {
                      indice = 8;
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ciao();
                          },
                        ),
                      );
                    }


                ),
                RoundedButto(
                    bool: men9,
                    title: '-Modulo 9: Bonus numero 2 ',
                    colour: Color.fromRGBO(58, 59, 60, 1),
                    onPressed: () {
                      indice = 9;
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ciao();
                          },
                        ),
                      );
                    }


                ),
                RoundedButto(
                    bool: men10,
                    title: '-Modulo 10: Bonus numero 3',
                    colour: Color.fromRGBO(58, 59, 60, 1),
                    onPressed: () {
                      indice = 10;
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ciao();
                          },
                        ),
                      );
                    }


                ),



              ],

            ),

        ),
      )
    );
  }

  getBoolValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool CheckValue = prefs.containsKey('intro');
    //Return bool
    if(CheckValue){
      bool boolValue = prefs.getBool('intro');

      men = boolValue;

      setState(() {

      });

    }
    else {
      men= false ;

      setState(() {

      });
    }

  }
  getMode1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool CheckValue = prefs.containsKey('mode1');
    //Return bool
    if(CheckValue){
      bool boolValue = prefs.getBool('mode1');

      men1 = boolValue;

      setState(() {

      });

    }
    else {
      men1= false ;

      setState(() {

      });
    }

  }
  getMode2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool CheckValue = prefs.containsKey('mode2');
    //Return bool
    if(CheckValue){
      bool boolValue = prefs.getBool('mode2');

      men2 = boolValue;

      setState(() {

      });

    }
    else {
      men2= false ;

      setState(() {

      });
    }

  }
  getMode3() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool CheckValue = prefs.containsKey('mode3');
    //Return bool
    if(CheckValue){
      bool boolValue = prefs.getBool('mode3');

      men3 = boolValue;

      setState(() {

      });

    }
    else {
      men3= false ;

      setState(() {

      });
    }

  }
  getMode4() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool CheckValue = prefs.containsKey('mode4');
    //Return bool
    if(CheckValue){
      bool boolValue = prefs.getBool('mode4');

      men4 = boolValue;

      setState(() {

      });

    }
    else {
      men4= false ;

      setState(() {

      });
    }

  }
  getMode5() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool CheckValue = prefs.containsKey('mode5');
    //Return bool
    if(CheckValue){
      bool boolValue = prefs.getBool('mode5');

      men5 = boolValue;

      setState(() {

      });

    }
    else {
      men5= false ;

      setState(() {

      });
    }

  }
  getMode6() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool CheckValue = prefs.containsKey('mode6');
    //Return bool
    if(CheckValue){
      bool boolValue = prefs.getBool('mode6');

      men6 = boolValue;

      setState(() {

      });

    }
    else {
      men6= false ;

      setState(() {

      });
    }

  }
  getMode7() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool CheckValue = prefs.containsKey('mode7');
    //Return bool
    if(CheckValue){
      bool boolValue = prefs.getBool('mode7');

      men7 = boolValue;

      setState(() {

      });

    }
    else {
      men7= false ;

      setState(() {

      });
    }

  }
  getMode8() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool CheckValue = prefs.containsKey('mode8');
    //Return bool
    if(CheckValue){
      bool boolValue = prefs.getBool('mode8');

      men8 = boolValue;

      setState(() {

      });

    }
    else {
      men8= false ;

      setState(() {

      });
    }

  }
  getMode9() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool CheckValue = prefs.containsKey('mode9');
    //Return bool
    if(CheckValue){
      bool boolValue = prefs.getBool('mode9');

      men9 = boolValue;

      setState(() {

      });

    }
    else {
      men9= false ;

      setState(() {

      });
    }

  }
  getMode10() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool CheckValue = prefs.containsKey('mode10');
    //Return bool
    if(CheckValue){
      bool boolValue = prefs.getBool('mode10');

      men10 = boolValue;

      setState(() {

      });

    }
    else {
      men10= false ;

      setState(() {

      });
    }

  }

}


