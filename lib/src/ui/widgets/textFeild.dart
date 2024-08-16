// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Textfeild extends StatelessWidget {
  final TextEditingController? controller;
  final String? heading;
  final String? hintText;
  final Icon? presfix;

  const Textfeild(
      {super.key, this.controller, this.heading, this.hintText, this.presfix});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$heading',
          style: TextStyle(
              color: Color.fromARGB(255, 111, 110, 110),
              fontWeight: FontWeight.w700),
        ).marginOnly(bottom: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(5), // Adjust radius as needed
          ),
          child: TextFormField(
          
            controller: controller,
            decoration: InputDecoration(

              suffixIcon: presfix,
              hintText: hintText,
              border: InputBorder.none, // Remove default border
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,vertical: 10), // Adjust padding as needed
            ),
          ),
        ),
      ],
    );
  }
}
