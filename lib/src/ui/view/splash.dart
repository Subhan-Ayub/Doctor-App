// ignore_for_file: avoid_unnecessary_containers

import 'dart:async';

import 'package:doctor_app/src/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.offAndToNamed(Routes.signIn);
    });
    return Scaffold(
        backgroundColor: Colors.grey.shade50,
        body: Center(
          child: Container(
            // width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            // color: Colors.blue,
            child: Image.asset(
              "assets/images/logos/logo.png",
              height: 300,
              width: 300,
            ),
          ),
        ));
  }
}
