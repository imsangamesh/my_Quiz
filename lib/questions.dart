import 'package:flutter/material.dart';
import 'main.dart';

class Questions extends StatelessWidget {
  final String recQuestion;

  Questions(this.recQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Text(
            recQuestion,
            style: TextStyle(
              color: Colors.green[900],
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
