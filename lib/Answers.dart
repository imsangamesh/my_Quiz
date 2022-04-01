// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'main.dart';

class Answers extends StatelessWidget {
  final Function resclickhandler;
  final String resanswer;

  Answers(this.resclickhandler, this.resanswer);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      RaisedButton(
        color: Colors.amber,
        child: Text(resanswer),
        onPressed: () => resclickhandler(),
      ),
    ]));
  }
}
