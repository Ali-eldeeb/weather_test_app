import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:weather_app_test/service/dio/dio.dart';
import 'package:weather_app_test/service/uttels/constance.dart';
import 'package:weather_app_test/view/deteails_view/details_view.dart';
import 'package:weather_app_test/view/home/home_view.dart';
import 'package:weather_app_test/view/splash_view/splash_screen.dart';

void main()async {
  runApp(const MyApp());

  WidgetsFlutterBinding.ensureInitialized() ;
   DioHelper.init() ;

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimeryColor ,
        textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme
        ) ,
      ),
      home: const SplashView(),
      getPages: [
        GetPage(name: '/', page:()=> HomeView()) ,
        GetPage(name: '/detailsView', page:()=> DetailsView()) ,

      ],
    );
  }
}

