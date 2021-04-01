import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:one_or_other/widgets/logo.widget.dart';

import 'widgets/input.widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gasolina ou Álcool, vey?',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121214),
      body: ListView(
        children: <Widget>[
          Logo(),
          Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
                color: Color(0xff00ff5f),
                borderRadius: BorderRadius.circular(
                  25,
                )),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Compensa usar álcool",
                  style: TextStyle(
                    color: Colors.black.withOpacity(1.0),
                    fontSize: 40,
                    fontFamily: "Big Shoulders Display",
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    margin: EdgeInsets.all(30),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xff262626),
                        borderRadius: BorderRadius.circular(
                          60,
                        )),
                    child: FlatButton(
                      child: Text(
                        "Calcular Novamente?",
                        style: TextStyle(
                          color: Color(0xff00ff5f),
                          fontSize: 27,
                          fontFamily: "Big Shoulders Display",
                        ),
                      ),
                      onPressed: () {},
                    ))
              ],
            ),
          ),
          Input(
            ctrl: _gasCtrl,
            label: "Gasosa",
          ),
          Input(
            ctrl: _alcCtrl,
            label: "Álcool",
          ),
          Container(
              margin: EdgeInsets.all(30),
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xff00ff5f),
                  borderRadius: BorderRadius.circular(
                    60,
                  )),
              child: FlatButton(
                child: Text(
                  "Preparado para a surpresa?",
                  style: TextStyle(
                    color: Colors.black.withOpacity(1.0),
                    fontSize: 27,
                    fontFamily: "Big Shoulders Display",
                  ),
                ),
                onPressed: () {},
              ))
        ],
      ),
    );
  }
}
