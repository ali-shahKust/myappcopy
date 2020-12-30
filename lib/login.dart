
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metodoloit/inizio.dart';
import 'bottone.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'main.dart';
import 'Home.dart';

class accedi extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }

      },
      child: Scaffold(


      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(17, 17, 17, 1),
        title: Text("Login",
        style: TextStyle(
          color: Color.fromRGBO(249, 249, 249, 1),
          fontSize: 19,

        ),),


      ),
      backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 90.00),
                child:
                Image(
                  image: AssetImage('images/logoscuro2.png'),
                  height: 170,
                  alignment:  Alignment(600.0, 600.0),
                ),
              ),

              Align(
                alignment: Alignment(-0.84, 0.5),
                child: Text(
                  "E-Mail",
                  style: TextStyle(fontSize: 15.0, color: Color.fromRGBO(249, 249, 249, 1)),

                ),
              ),
              SizedBox(
                height: 7,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 360,
                    child: TextField(
                      onChanged: (value) {
                        email = value;
                      },
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        fillColor: Color.fromRGBO(17, 17, 17, 1),
                        hintText: ("E-Mail"),
                        hintStyle: TextStyle(fontSize: 15.0, color: Color.fromRGBO(80, 80, 82, 1),),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 150.0,
                  ),

                 Align(
                   alignment: Alignment(-0.84, 0.5),
                   child: Text(
                        "Password",
                        style: TextStyle(fontSize: 15.0, color: Color.fromRGBO(249, 249, 249, 1)),

                      ),
                 ),
                  SizedBox(
                    height: 7,
                  ),

                  Container(
                    width: 360,
                    child:  TextField(
                      onChanged: (value) {
                        password = value;

                      },
                      cursorColor: Colors.white,
                      obscureText: true,
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white
                      ),
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        fillColor: Color.fromRGBO(17, 17, 17, 1.00),
                        hintText: ("Password"),
                        hintStyle: TextStyle(fontSize: 15.0, color: Color.fromRGBO(80, 80, 82, 1)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment(0.8, 0.5),
                child: Text(
                  'Password dimenticata',
                      style: TextStyle(fontSize: 12.5, color: Color.fromRGBO(113, 113, 116, 1)),
                ),
              ),


              SizedBox(
                height: 30.0,
                width: 100.0,
              ),
              RoundedButton(
                title: 'Login',
                colour: Color.fromRGBO(19, 19, 19, 1),
                onPressed: () async {
                  var user = await _auth.signInWithEmailAndPassword(email: email, password: password);

                  if (user != null) {
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context){
                          return Home();
                        },
                      ),
                    );
                  }
                },
              ),
              SizedBox(
                height: 4,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Utilizzando Metodo Lit accetti interamente i Termini d\'uso e la\n                                       Privacy Policy',
                    style: TextStyle(fontSize: 12.0, color: Color.fromRGBO(208, 208, 208, 1)),
                ),
              )
            ],
          ),
        ),
      ),
      ),
    );
  }
}