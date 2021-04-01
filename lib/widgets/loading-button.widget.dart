import 'package:flutter/material.dart';

class LoadButton extends StatelessWidget {
  var ocupado = false;
  var invert = false;

  Function func;
  var text = "";

  LoadButton({
    @required this.ocupado,
    @required this.invert,
    @required this.func,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ocupado
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            margin: EdgeInsets.all(30),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xff00ff5f),
                borderRadius: BorderRadius.circular(
                  60,
                )),
            child: FlatButton(
              child: Text(
                text,
                style: TextStyle(
                  color: Color(0xff262626),
                  fontSize: 25,
                  fontFamily: "Big Shoulders Display",
                ),
              ),
              onPressed: func,
            ));
  }
}
