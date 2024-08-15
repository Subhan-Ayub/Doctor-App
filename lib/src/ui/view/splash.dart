import 'dart:async';

import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      print('object');
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
