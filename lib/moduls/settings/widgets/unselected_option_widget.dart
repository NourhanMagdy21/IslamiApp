import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnSelectedOption extends StatelessWidget {
  final String unselectedTitle;

   UnSelectedOption({super.key, required this.unselectedTitle});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
          color:Colors.white.withOpacity(0.05),
          borderRadius:BorderRadius.circular(8) ,
          border: Border.all(color: Colors.black)),
     
      child: Text(unselectedTitle),
    );
  }
}
