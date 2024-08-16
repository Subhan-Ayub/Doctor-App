// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:doctor_app/src/ui/widgets/commonBtn.dart';
import 'package:doctor_app/src/ui/widgets/textFeild.dart';
import 'package:doctor_app/src/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
          
            children: [
              Container(
                height: 320,
                width: Get.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/a.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logos/Group1.png",
                      fit: BoxFit.cover,
                    ).marginOnly(bottom: 30, top: 50),
                    Text(
                      'Reset Password',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontFamily: 'Rubik',
                          fontSize: 35),
                    ),
                    Text(
                      'Please enter your email address. A code will be sent to your email',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontFamily: 'Rubik',
                          fontSize: 15),
                    ),
                  ],
                ).marginSymmetric(horizontal: 30),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Textfeild(
                    heading: 'EMAIL',
                    hintText: 'Email',
                  ).marginSymmetric(vertical: 40),
                
                  InkWell(onTap: () {
                    Get.toNamed(Routes.code);
                  }, child: CommonBtn(text: 'CONTINUE')),
                 
                ],
              ).marginSymmetric(horizontal: 25)
            ],
          ),
        ),
      ),
    );
  }
}
