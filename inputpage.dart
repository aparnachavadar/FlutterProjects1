import 'package:bmi_calci/calbmi.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calci/iconcontent.dart';
import 'package:bmi_calci/reusablecard.dart';
import 'package:bmi_calci/resultpage.dart';

const activeCardcolour=Color(0xFF1D1E33);
const inactiveCardColor=Color(0xFF111328);
const labelTextstyle=TextStyle(fontSize: 18.0,
                      color: Color(0xFF8D8E98),);
const numTextstyle=TextStyle( fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                               color: Colors.white,
                              );

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecardcolor=inactiveCardColor;
  Color femalecardcolor=inactiveCardColor;
  int height=180;
  int weight=50;
  int age=25;

  //1=male and 2=female

  void updatecolor(int gender){
    if(gender==1)
    {
     if(malecardcolor==inactiveCardColor)
     {
      malecardcolor=activeCardcolour;
      femalecardcolor=inactiveCardColor;
    }
     else
       {
         malecardcolor=inactiveCardColor;
       }
    }
    else{
      if(femalecardcolor==inactiveCardColor)
      {
        femalecardcolor=activeCardcolour;
        malecardcolor=inactiveCardColor;
      }
      else
      {
        femalecardcolor=inactiveCardColor;
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Center(child: Text("BMI CALCI")),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child:
                GestureDetector(
                  onTap: (){
                    setState(() {
                      updatecolor(1);
                    });
                  },
                  child: ReusableContainer(
                    colour: malecardcolor,
                    CardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
              ),
            SizedBox(
                width: 30,
              ),
              Expanded(
                child:
                GestureDetector(
                  onTap: (){
                    setState(() {
                      updatecolor(2);
                    });
                  },
                  child: ReusableContainer(
                    colour: femalecardcolor,
                    CardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),


                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child:
                ReusableContainer(
                  colour: activeCardcolour,
                  CardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: labelTextstyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: numTextstyle,),

                          Text('cms',style: labelTextstyle),
                        ],
                      ),
                      SliderTheme(data:SliderTheme.of(context).copyWith(

                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                        child:Slider(
                          value: height.toDouble(),
                          min:120.0,
                          max:220.0,
                          activeColor: Colors.white,
                          inactiveColor: Color(0xFF8D8E98),

                          onChanged: (double newval){
                            setState(() {
                              height=newval.round();//rounded to int
                            });
                          },


                      ),)
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child:
                ReusableContainer(
                  CardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("WEIGHT",
                        style:labelTextstyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            weight.toString(),
                            style: numTextstyle,),

                          Text('kgs',style: labelTextstyle),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                              child:Icon(Icons.add),
                            backgroundColor: Color(0xFF8D8E98),
                             shape: CircleBorder(),
                              onPressed: (){
                              setState(() {
                                weight++;
                              });
                              },

                            ),
                          SizedBox(width:6.0),
                          FloatingActionButton(
                              child:
                              Icon(
                               (FontAwesomeIcons.minus),
                              ),
                              backgroundColor: Color(0xFF8D8E98),
                              shape: CircleBorder(),
                              onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              }
                                 ),
                            ],
                           ),
                      ],
                  ),
                  colour: activeCardcolour,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Expanded(
                child:
                ReusableContainer(
                  CardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("AGE",
                          style:labelTextstyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            age.toString(),
                            style: numTextstyle,),

                          Text('yrs',style: labelTextstyle),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            child:Icon(Icons.add),
                            backgroundColor: Color(0xFF8D8E98),
                            shape: CircleBorder(),
                            onPressed: (){
                             setState(() {
                               age++;
                             });
                            },

                          ),
                          SizedBox(width:6.0),
                          FloatingActionButton(
                              child:
                              Icon(
                                (FontAwesomeIcons.minus),
                              ),
                              backgroundColor: Color(0xFF8D8E98),
                              shape: CircleBorder(),
                              onPressed: (){
                               setState(() {
                                 age--;
                               });
                              },
                          ),
                        ],
                      ),
                    ],
                  ),
                  colour: activeCardcolour,

                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child:
                GestureDetector(
                  onTap: (){
                    calbrain calci=calbrain(height:height,weight: weight);
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>
                        result(
                      bmiresult: calci.Calbmi(),
                      resulttext:calci.getresult(),
                    )));
                  },
                  child: Container(
                    child: Text("CALCULATE",style:
                    TextStyle(fontSize:30,color: Colors.white),textAlign:TextAlign.center),
                    height:50,
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



