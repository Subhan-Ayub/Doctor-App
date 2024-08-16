// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, file_names

import 'package:doctor_app/src/ui/widgets/commonBtn.dart';
import 'package:doctor_app/src/ui/widgets/textFeild.dart';
import 'package:doctor_app/src/utils/routes/routes.dart';
import 'package:doctor_app/src/utils/uidata/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: Get.height,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      'Sign in',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontFamily: 'Rubik',
                          fontSize: 35),
                    ),
                    Text(
                      'Please enter your credentials to proceed',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontFamily: 'Rubik',
                          fontSize: 15),
                    ),
                  ],
                ).marginOnly(left: 30),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Textfeild(
                      heading: 'EMAIL',
                      hintText: 'Email',
                    ),
                    Textfeild(
                      heading: 'PASSWORD',
                      hintText: 'Password',
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.forget);
                      },
                      child: Text(
                        'Forget Password?',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: UIDataColors.commonColor),
                      ).marginSymmetric(vertical: 40),
                    ),
                    CommonBtn(text: 'SIGN IN'),
                    Text(
                      'OR',
                      style: TextStyle(
                          // fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: const Color.fromARGB(255, 190, 190, 190)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 41,
                          width: 41,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/22.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Image.asset(
                            "assets/images/Group.png",
                            // fit: BoxFit.cover,
                          ),
                        ).marginOnly(right: 20),
                        Image.asset(
                          "assets/images/2.png",
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dont have an account? ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: const Color.fromARGB(255, 190, 190, 190)),
                        ),
                        Text(
                          'Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: UIDataColors.commonColor),
                        )
                      ],
                    ).marginOnly(bottom: 20)
                  ],
                ).marginSymmetric(horizontal: 25),
              )
            ],
          ),
        ),
      ),
    );
  }
}
