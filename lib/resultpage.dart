// this stateless class designs result page and
// also takes the values from calbrain class of calbmi.dart


import 'package:bmi_calci/inputpage.dart';
import 'package:flutter/material.dart';


// these custom colors can be used in the file anywr
const activeCardcolour=Color(0xFF1D1E33);
const inactiveCardColor=Color(0xFF111328);



const numTextstyle=TextStyle( fontSize: 50.0,
  fontWeight: FontWeight.w900,
  color: Colors.white,
);// customised fontstyle

const labelTextstyle=TextStyle(fontSize: 50.0,
  fontWeight: FontWeight.w900,
  color: Color(0xFF8D8E98),);


class result extends StatelessWidget{

  result({required this.bmiresult,required this.resulttext});
  final String bmiresult;     // will take the result of bmi calculation
  final String resulttext;    // will take the string msg after checking the apt condition
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Center(child: Text("BMI CALCI")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Text("Your Result",style:
                  TextStyle(fontSize:40,color: Colors.white,fontWeight: FontWeight.w900),
                  ),
                  height:70.0,
                  width:double.infinity,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(8.0)
                  ),
                ),
              ),
              ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(bmiresult.toString(),style: labelTextstyle,),
                          SizedBox(height: 20,),
                          Text(
                            resulttext.toUpperCase(),
                            style: labelTextstyle,textAlign: TextAlign.center,),
                        ],
                       ),
                            height:400.0,
                            width:double.infinity,
                            margin: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                color: activeCardcolour,
                                borderRadius: BorderRadius.circular(8.0)
                            ),


                        ),
                      ),
                ],
              ),
            SizedBox(width: 50.0,),
            Row(
              children: [
                Expanded(
                  child:
                        GestureDetector(
                        onTap: (){
                        Navigator.pop(context,MaterialPageRoute(builder:(context)=>InputPage()));
                        },
                          child: Container(
                              child: Text("RECALCULATE",style:
                                  TextStyle(fontSize:30,color: Colors.white),textAlign:TextAlign.center,
                              ),
                                  height:70,
                                  width:double.infinity,
                                  margin: EdgeInsets.all(15.0),
                                  decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(8.0)
                                  ),
                              ),
                        ),
                ),
              ],
            ),

      ],
      ),
    );
  }

}
