import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testtesttest/utils/calculationbmi.dart';
import 'package:testtesttest/utils/reuedcard.dart';
import 'package:testtesttest/utils/hintcart.dart';
import '../utils/constants.dart';
import 'result_screen.dart';


class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}
enum gender{
  male,
female,
}

class _InputPageState extends State<InputPage> {

  Color malecolor=Kinactivecolor;
  Color femalecolor=Kinactivecolor;
  @override
  void updatecolor(gender selected){
    if(selected==gender.male){
      if(malecolor==Kinactivecolor){
        malecolor=Kactivecolorcard;
        femalecolor=Kinactivecolor;
    }
      else{
        malecolor==Kinactivecolor;
      }
  }
    if(selected==gender.female){
      if(femalecolor==Kinactivecolor){
        femalecolor=Kactivecolorcard;
        malecolor=Kinactivecolor;
      }
      else{
        femalecolor==Kinactivecolor;
      }
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap:() {
                          setState(() {
                            updatecolor(gender.male);
                          });
                          print('Male bottom is pressed');
                        },
                        child: Reusedcard(
                            malecolor,
                            hintcard( icon:FontAwesomeIcons.mars, label:'MALe',)),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            updatecolor(gender.female);
                          });
                          print('FEMale bottom is pressed');
                        },
                        child: Reusedcard(
                            femalecolor,
                            hintcard(icon: FontAwesomeIcons.venus,label: 'FEMALe')),
                      ),
                    ),
                  ],
                )),
            Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Reusedcard(
                          ledcolor,
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:<Widget> [
                                Text('HEIGHT',
                                    style:labeltextinfo
                                ),
                                SizedBox(height: 8,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:<Widget> [
                                    Text(height.toString(),
                                      style:knumlabel,),
                                    Text('CM',style:labeltextinfo ,
                                    ), ],
    ),
                                    Slider(
                                      activeColor: Color(0XFFEB1555),
                                      inactiveColor: Color(0XFF8d8e98),
                                      value:height.toDouble(),
                                      min:120,
                                      max:220,
                                      onChanged:(double newvalue){
                                        setState(() {
                                          height=newvalue.round();
                                        });
                                      } ,
                                    ),
                              ],
                            ),
                          )),
                    )
                  ],
                )),
            Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Reusedcard(
                          ledcolor,
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:<Widget> [
                              Text('weight',
                                style:labeltextinfo ,),
                              Text(weight.toString(),
                                style: knumlabel,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed:(){setState(() {
                                      weight++;
                                    });},

                                    backgroundColor: Color(0xFF4c4f5e),
                                    child: Icon(FontAwesomeIcons.plus),
                                  ),
                                  SizedBox(width: 13,),
                                  FloatingActionButton(
                                    onPressed:(){setState(() {
                                      weight--;
                                    });},
                                    backgroundColor: Color(0xFF4c4f5e),
                                    child: Icon(FontAwesomeIcons.minus),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ),
                    Expanded(
                      child: Reusedcard(
                          ledcolor,
                           Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children:<Widget> [
                               Text('AGE',
                                 style:labeltextinfo ,),
                               Text(age.toString(),
                               style: knumlabel,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   FloatingActionButton(
                                     onPressed:(){setState(() {
                                       age++;
                                     });},

                                     backgroundColor: Color(0xFF4c4f5e),
                                     child: Icon(FontAwesomeIcons.plus),
                                   ),
                                   SizedBox(width: 13,),
                                   FloatingActionButton(
                                     onPressed:(){setState(() {
                                       age--;
                                     });},
                                     backgroundColor: Color(0xFF4c4f5e),
                                     child: Icon(FontAwesomeIcons.minus),
                                   ),
                                 ],
                               )
                             ],
                           )
                      ),
                    ),
                  ],
                )),
            GestureDetector(
              onTap:(){
                calculate calc=calculate(height,weight);
                //Navigator.pushNamed(context,'s2');
                Navigator.push(context, MaterialPageRoute(builder: (context)=>resultscreen(bmiresult: calc.Calcbmi(),
                resulttext: calc.getresult(),
                interpretation: calc.getinterpretation(),),),);
              },
              child: Container(
                child:Center(child: Text('CALCULATE',style:kcalclabel,)) ,
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,
              ),
            )
          ],
        ));
  }
}
