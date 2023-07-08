

// no need of material.dart as need material widget is built here
//this class only calculates the bmi

import 'dart:math';


class calbrain {

  calbrain({required this.height, required this.weight});//both args are required for cal of bmi

  final int height;
  final int weight;
  double _bmi = 0.0;

 String Calbmi() {
    double _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);   /// for converting decimal to single place decimal


    }
   String getresult(){
     double _bmi = weight / pow(height / 100, 2);
     if(_bmi>=25){
       return 'not normal,eat less and excercise more';
     }
    else{
      return 'normal!!!! good keep it up';
    }
   }

  }

