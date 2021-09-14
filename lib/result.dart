import 'package:flutter/material.dart';
import 'package:mcqa_app/main.dart';

class Result extends StatelessWidget{
  late int totalMcqs;
  late int correctMcqs;
  late int wrongMcqs;
  late double percentage;
  Result({required this.totalMcqs, required this.correctMcqs,
    required this.wrongMcqs, required this.percentage });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Container(
              width: double.infinity,
              height: 350,
              child: Card(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                  ListTile(
                    title: Text('Total MCQS: '),
                    trailing: Text('$totalMcqs'),
                    tileColor: Colors.teal,
                  ),
                      SizedBox( height: 15,),
                      ListTile(
                        title: Text('Correct MCQS: '),
                        trailing: Text('$correctMcqs'),
                        tileColor: Colors.green,
                      ),
                      SizedBox( height: 15,),
                      ListTile(
                        title: Text('Wrong MCQS: '),
                        trailing: Text('$wrongMcqs'),
                        tileColor: Colors.red,
                      ),
                      SizedBox( height: 15,),
                      ListTile(
                        title: Text('MCQS Percentage: '),
                        trailing: Text('$percentage'),
                        tileColor: Colors.cyan,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}