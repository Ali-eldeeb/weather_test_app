import 'package:flutter/material.dart';
import 'package:weather_app_test/view/home/widget/home_view_body.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.put(HomeController()) ;
    return  Scaffold(

      body: HomeViewBody(),

    );
  }
}
