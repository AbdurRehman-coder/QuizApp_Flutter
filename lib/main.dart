//import 'dart:html';

import 'package:mcqa_app/quizBrain.dart';

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

  // var question = ListClass().questionText[questionNumber];

  int questionNumber = 0;
  IconData? get trueIcons => Icons.check;
  IconData? get falseIcon => Icons.add_outlined;
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
               ,

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
                    bool correctAnswer;
                    if(correct == true){
                      print('Yes it is true');
                      trueIcons;
                    }
                    else {
                      print('No it is not true');
                      falseIcon;

                    }

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
                      'False'
                  ),
                  //onPressed button that will perform the action
                  // behind the button
                  onPressed: (){
                    bool correct = combination[questionNumber].answer;
                    if(correct == false){
                      print('yes it is false');
                    }
                    else {
                      print('NO it is not false');
                    }
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

                Icon(trueIcons),
                  Icon(falseIcon),
          ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}