import 'package:flutter/material.dart';
import 'package:testtesttest/utils/constants.dart';
import 'package:testtesttest/Screens/Input_page.dart';

class resultscreen extends StatelessWidget {
 final String bmiresult;
 final String resulttext;
 final String interpretation;

  const resultscreen({Key? key,required this.bmiresult, required this.resulttext, required this.interpretation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(
    title: Center(child:
    Text('BMI CALCULATOR' ,)),
  ) ,

     body: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       crossAxisAlignment: CrossAxisAlignment.center,
       children:<Widget> [
         Expanded(child: Container(
           child: Center(child: Text('YOUR RESULT',style: knumlabel,)),
         )),
         Expanded(
             flex:4,

             child: Container (

               color: Kinactivecolor,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 mainAxisSize: MainAxisSize.max,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                   Text(resulttext,style: kresultlabel,),
                   Text(bmiresult,style: kbmilabel,),
                   Text(interpretation),
                 ],
               ),
             )),
         GestureDetector(
           onTap:(){
             Navigator.pop(context);
           },
           child: Container(
             child:Center(child: Text('RE-CALCULATE',style:kcalclabel,)) ,
             color: Color(0xFFEB1555),
             margin: EdgeInsets.only(top: 10.0),
             width: double.infinity,
             height: 80.0,
           ),
         )
       //  redbuttom(onTap:(){ Navigator.pop(context);},btitle: "RE-CALCULATE",),
       ],
     ),
      
    );
  }
}
