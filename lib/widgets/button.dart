import 'package:flutter/material.dart';
import 'package:to_do_app/const.dart';

class ButtonWidget extends StatelessWidget {
  final String textmessage;
  VoidCallback onTap;
    ButtonWidget({required this.textmessage, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
       width: 310,
       height: 60,
    
        decoration:  BoxDecoration(color: Constants.primaryColor, borderRadius: BorderRadius.circular(15)),
        child: Center(child: Text(textmessage, style: const TextStyle(color: Constants.backgroundColor, fontSize: 18, fontWeight: FontWeight.bold),),),
      ),
    );
  }
}