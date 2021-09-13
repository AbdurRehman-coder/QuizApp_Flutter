import 'package:mcqa_app/quizBrain.dart';
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
  QuizBrain quizBrain = QuizBrain();

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
              quizBrain.getQuestionText(),
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
                    bool correctAnswer = quizBrain.getAnswer();
                    if(correctAnswer == true){
                      print('Yes it is true');
                    }
                    else {
                      print('No it is not true');
                    }

                    setState(() {
                      quizBrain.nextQuestion();

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
                    bool correctAnswer = quizBrain.getAnswer();
                    if(correctAnswer == false){
                      print('yes it is false');
                    }
                    else {
                      print('NO it is not false');
                    }
                    setState(() {
                      quizBrain.nextQuestion();

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