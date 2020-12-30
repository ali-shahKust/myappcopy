import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.title, this.colour, @required this.onPressed});

  final Color colour;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 350.0,
          height: 40.0,
          child: Text(
            title,
            style: TextStyle(
              color: Color.fromRGBO(249, 249, 249, 1),
              fontFamily: " FrankRuhlLibre",
              fontSize: 16,
            ),
          ),
        ),


      ),
    );
  }
}