import 'package:flutter/material.dart';
import 'package:mcqa_app/main.dart';

class Result extends StatelessWidget {
  late int totalMcqs;
  late int correctMcqs;
  late int wrongMcqs;
  late double percentage;

  Result(
      {required this.totalMcqs,
      required this.correctMcqs,
      required this.wrongMcqs,
      required this.percentage});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz Result',
          style: Theme.of(context).textTheme.headline5,
        ),
        backgroundColor: Colors.indigo,
        leading: IconButton(
          icon: Icon(Icons.keyboard_backspace),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Container(
            width: double.infinity,
            height: 350,
            child: Card(
              color: Colors.black54,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ListTile(
                      title: Text('Total MCQS: ',
                          style: Theme.of(context).textTheme.headline6),
                      trailing: Text(
                        '$totalMcqs',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      tileColor: Colors.teal,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      title: Text('Correct MCQS: ',
                          style: Theme.of(context).textTheme.headline6),
                      trailing: Text('$correctMcqs',
                          style: Theme.of(context).textTheme.headline6),
                      tileColor: Colors.green,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      title: Text('Wrong MCQS: ',
                          style: Theme.of(context).textTheme.headline6),
                      trailing: Text('$wrongMcqs',
                          style: Theme.of(context).textTheme.headline6),
                      tileColor: Colors.red,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      title: Text('MCQS Percentage: ',
                          style: Theme.of(context).textTheme.headline6),
                      trailing: Text('$percentage',
                          style: Theme.of(context).textTheme.headline6),
                      tileColor: Colors.cyan,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}