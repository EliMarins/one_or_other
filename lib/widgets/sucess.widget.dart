import 'package:flutter/material.dart';

import 'loading-button.widget.dart';

class Sucess extends StatelessWidget {
  var result = "";
  Function reset;

  Sucess({
    @required this.result,
    @required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: Color(0xff262626),
          borderRadius: BorderRadius.circular(
            25,
          )),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            result,
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontFamily: "Big Shoulders Display",
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          LoadButton(
            ocupado: false,
            invert: false,
            text: "Se assustou? Calcule novamente!",
            func: reset,
          ),
        ],
      ),
    );
  }
}
