import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:one_or_other/widgets/loading-button.widget.dart';
import 'package:one_or_other/widgets/logo.widget.dart';
import 'package:one_or_other/widgets/submit-file.widget.dart';
import 'package:one_or_other/widgets/sucess.widget.dart';

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
      backgroundColor: Color(0xff202326),
      body: ListView(
        children: <Widget>[
          Logo(),
          SubmitForm(
            alcCtrl: _alcCtrl,
            gasCtrl: _gasCtrl,
            submitFunc: () {},
            ocupado: false,
          ),
        ],
      ),
    );
  }
}
