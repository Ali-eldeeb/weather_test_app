

import 'package:flutter/material.dart';

class CustomeText extends StatelessWidget {
   CustomeText(
      {super.key ,
     required   this.text ,

     required   this.style ,
  });
  String text  ;
  TextStyle style ;



  @override
  Widget build(BuildContext context) {
    return Text(
      text ,
      style: style ,


    );
  }
}
