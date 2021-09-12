import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class QuestionAnswer{
  late String questions;
   late bool answer;
  QuestionAnswer({required String q, required bool ans}){
    questions = q;
    answer = ans;
  }

}