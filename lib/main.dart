// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors, duplicate_ignore, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:myflut/Answers.dart';
import 'package:myflut/results.dart';
import 'questions.dart';

void main() => runApp(myApp());

class myApp extends StatefulWidget {
  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  List datas = [
    {
      'question': '1.what is your name ?',
      'answer': [
        {'name': 'san', 'score': 1},
        {'name': 'sangamesh', 'score': 2},
        {'name': 'sanme', 'score': 3},
        {'name': 'why do you care', 'score': 4},
      ],
    },
    {
      'question': '2.what is favorite animal ?',
      'answer': [
        {'name': 'elephant', 'score': 1},
        {'name': 'rabbit', 'score': 2},
        {'name': 'lion', 'score': 3},
        {'name': 'tiger', 'score': 4},
      ],
    },
    {
      'question': '3.what is favorite color ?',
      'answer': [
        {'name': 'white', 'score': 1},
        {'name': 'green', 'score': 2},
        {'name': 'red', 'score': 3},
        {'name': 'black', 'score': 4},
      ],
    },
    {
      'question': '4.what is favorite character in JUNGLE-BOOK ?',
      'answer': [
        {'name': 'akila', 'score': 1},
        {'name': 'raksha', 'score': 2},
        {'name': 'tiger', 'score': 3},
        {'name': 'scar', 'score': 4},
      ],
    },
    {
      'question': '5.do you brush daily ?',
      'answer': [
        {'name': 'yes', 'score': 1},
        {'name': 'no', 'score': 2},
        {'name': 'don\'t know', 'score': 3},
        {'name': 'i will not tell', 'score': 4},
      ],
    }
  ];

  int qi = 0;
  int score = 0;

  void clickhandler(String s) {
    setState(() {
      var c = int.parse(s);
      qi += 1;
      score += c;
    });
  }

  void resethandler() {
    setState(() {
      qi = 0;
      print('result $score');
    });
  }

  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SANMe\'s quiz'),
          backgroundColor: Colors.amber[700],
          centerTitle: true,
        ),
        body: qi < datas.length
            ? Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Questions(datas[qi]['question']),
                    ...(datas[qi]['answer'] as List<Map<String, Object>>)
                        .map((ans) => Answers(
                            () => clickhandler(ans['score'].toString()),
                            ans['name'].toString()))
                        .toList()
                  ],
                ),
              )
            : Results(resethandler, score),
      ),
    );
  }
}
