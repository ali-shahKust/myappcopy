import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';


class RoundedButto extends StatefulWidget {
  RoundedButto({this.title, this.colour, @required this.onPressed,this.bool });

  final Color colour;
  final String title;
  final bool;
  final Function onPressed;


  @override
  _RoundedButtoState createState() => _RoundedButtoState();
}

class _RoundedButtoState extends State<RoundedButto> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        elevation: 30.0,
        color: widget.colour,
        borderRadius: BorderRadius.circular(7.0),
          child: Stack(
            children: [
              Positioned(
                bottom: 8,
                right: 5,
                top: 5,
                child:Icon(
                  Icons.chevron_right,
                  color: Color.fromRGBO(230, 230, 230, 1),
                )
              ),

              MaterialButton(
                onPressed: widget.onPressed,
                minWidth: MediaQuery.of(context).size.width-20,
                height: 70.0,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 300),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment(0.0, 0.0),
                        child: Row(
                          children: [

                            Checkbox(
                              value: widget.bool,

                            ),
                            Expanded(

                              child: Text(

                                widget.title,
                                textAlign: TextAlign.center,
                                style: TextStyle(

                                  color: Color.fromRGBO(230, 230, 230, 1),
                                  fontFamily: " FrankRuhlLibre",
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
      ),

    );
  }
}



