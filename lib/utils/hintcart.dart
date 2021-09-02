import 'package:flutter/material.dart';
import 'package:testtesttest/utils/reuedcard.dart';

import 'constants.dart';
class hintcard extends StatelessWidget {

  hintcard( { required this.icon, required this.label});
  @override

  final IconData icon;
  final String   label;


  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: Color(0xFF8d8e98),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labeltextinfo
        )
      ],
    );
  }
}