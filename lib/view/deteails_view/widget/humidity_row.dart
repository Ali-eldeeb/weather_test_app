import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app_test/controller/details_controller.dart';
import 'package:weather_app_test/service/uttels/Style.dart';

class HumidityRow extends StatelessWidget {
  const HumidityRow({super.key});

  @override
  Widget build(BuildContext context) {
    DetailsController controller = Get.put(DetailsController()) ;

    return Row(
      children: [
        const Text(
          'Humidity' ,
          style: Style.textStyle30,
        ) ,
        const Spacer() ,
        Text(
          '${controller.weather.main?.humidity.toString()}' ,
          style: Style.textStyle30,
        ) ,

      ],
    ) ;
  }
}
