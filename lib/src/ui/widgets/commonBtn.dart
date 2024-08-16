// ignore_for_file: file_names

import 'package:doctor_app/src/utils/uidata/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonBtn extends StatelessWidget {
  final String text;
  const CommonBtn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: UIDataColors.commonColor),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ).marginSymmetric(vertical: 10),
      ),
    );
  }
}
