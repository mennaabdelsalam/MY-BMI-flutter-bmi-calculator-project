import 'package:flutter/material.dart';
import 'package:testtesttest/utils/hintcart.dart';

class Reusedcard extends StatelessWidget {

  final Color cardcolor;
  final Widget customcard;

 // const Reusedcard(Color leacolor, {Key? key, required this.cardcolor, required this.customcard}) : super(key: key);
  Reusedcard(
      this.cardcolor,
      this.customcard,);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: customcard,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: cardcolor,
      ),
    );
  }
}
