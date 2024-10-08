import 'package:doctor_app/src/utils/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
          fontFamily: 'Rubik',
          ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      // onUnknownRoute: (RouteSettings rs) => MaterialPageRoute(
      //   builder: (context) {
      //     return ErrorView(
      //         // message: 'Coming Soon!',
      //         );
      //   },
      // ),

    );
  }
}
