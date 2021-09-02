import 'dart:math';
import 'package:flutter/material.dart';
class calculate{
  final int height;
  final int weight;
 late double _bmi;

  calculate(this.height, this.weight);



  String Calcbmi(){
    _bmi=weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getresult(){
    if(_bmi>=25){
      return 'OVERWIGHT';
    }else if(_bmi>18.5){
      return 'NORMAL';
    }else{
      return "UNDERWEIGHT";
    }
  }
  String getinterpretation(){
    if(_bmi>=25){
      return 'you have a higher than normal body weight ,try to exercice more';
    }else if(_bmi>18.5){
      return 'you have a normal body';
    }else{
      return "you have a lower than normal body weight,you should eat more!!";
    }
  }
}