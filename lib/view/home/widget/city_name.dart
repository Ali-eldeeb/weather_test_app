import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:weather_app_test/controller/home_controller.dart';
import 'package:weather_app_test/service/uttels/Style.dart';
import 'package:weather_app_test/view/home/widget/custome_text.dart';

class CityName extends StatelessWidget {
  const CityName({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<HomeController1>(
      init: HomeController1(),
      builder: (controller)=> CustomeText(
        text: "${controller.weather?.name.toString()??""}",
        style: Style.textStyle30,
      ),
    ) ;
  }
}
