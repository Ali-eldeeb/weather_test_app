import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:weather_app_test/controller/home_controller.dart';
import 'package:weather_app_test/service/uttels/Style.dart';
import 'package:weather_app_test/view/home/widget/custome_text.dart';

class MinAndMaxTemp extends StatelessWidget {
  const MinAndMaxTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GetBuilder<HomeController1>(
            init: HomeController1(),
            builder: (controller)=> CustomeText(
                text: "${controller.weather?.main?.tempMin.toString()??""} C",
                style: Style.textStyle16
            )

        ) ,
        const SizedBox(
          width: 15.0,
        ) ,
        GetBuilder<HomeController1>(
            init: HomeController1(),
            builder: (controller)=> CustomeText(
              text: "${controller.weather?.main?.tempMax.toString()??""} C",
              style:Style.textStyle16,
            )

        ) ,
      ],
    )  ;
  }
}
