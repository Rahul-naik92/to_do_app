import 'package:flutter/material.dart';


class TextFieldExample extends StatelessWidget {

  final String hintText;
  final TextEditingController controller;

   const TextFieldExample({required this.hintText, required this.controller,super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextField(
                  cursorColor: Colors.black,
                  controller: controller,
                style: const TextStyle(
                  height: 1.0,
                  color: Colors.black
                ),
                decoration: InputDecoration(
                  hintText: hintText,
                  
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
    );
  }
}