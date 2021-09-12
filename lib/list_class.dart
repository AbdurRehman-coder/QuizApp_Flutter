import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class QuestionAnswer{
  String? questions;
  bool? answer;
  QuestionAnswer({required String q, required bool ans});

}
  List<Icon> answerIcon = [
    Icon(Icons.check,
      color: Colors.green,),
    Icon(Icons.check,
      color: Colors.red,),
    Icon(Icons.check,
      color: Colors.green,),
    Icon(Icons.check,
      color: Colors.red,),
    Icon(Icons.check,
      color: Colors.green,),
    Icon(Icons.check,
      color: Colors.red,),
    Icon(Icons.check,
      color: Colors.green,),
    Icon(Icons.check,
      color: Colors.red,)
  ];