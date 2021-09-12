//import 'dart:html';

import 'list_class.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List combination = [
    QuestionAnswer(q: 'There are understandable reasons why arguments occure about language', ans: false),
    QuestionAnswer(q: 'Our assessment of a person\'s intelligence is affected by the way he or she uses language', ans: true),
    QuestionAnswer(q: 'Descriptivism only appeared after the 18th century', ans: true),
    QuestionAnswer(q: 'Prescriptivism still exists today', ans: false),
  ];

  // var question = ListClass().questionText[questionNumber];

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
           crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Center(
               child: Text(
               combination[0],

                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            // Create button for true action
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  child: Text(
                    'True'
                  ),
                  //onPressed button that will perform the action
                  // behind the button
                  onPressed: (){
                    setState(() {
                      questionNumber++;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,

                  ),            ),
              ),
            ),
            //Create button for false
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  child: Text(
                      'True'
                  ),
                  //onPressed button that will perform the action
                  // behind the button
                  onPressed: (){

                    setState(() {
                      questionNumber++;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,

                  ),            ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [

          ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}