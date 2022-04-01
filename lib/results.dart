// ignore_for_file: dead_code, deprecated_member_use

import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final Function resethandler;
  final int score;

  String get resultphrase {
    var resultphrase = 'you did it';
    if (score <= 5) {
      resultphrase = ' yout ranking is 1 ';
    } else if (score <= 10) {
      resultphrase = ' yout ranking is 3 ';
    } else if (score <= 15) {
      resultphrase = ' yout ranking is 4 ';
    } else {
      resultphrase = ' yout ranking is 5 ';
    }
    return resultphrase;
  }

  Results(this.resethandler, this.score);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Column(
            children: [
              // ignore: prefer_const_constructors
              Text(
                'wohoo you did it :) ',
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                ' $resultphrase ',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.green[700],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(40),
          child: RaisedButton(
            color: Colors.greenAccent,
            child: Text("Reset quiz"),
            onPressed: () => resethandler(),
          ),
        )
      ],
    );
  }
}
