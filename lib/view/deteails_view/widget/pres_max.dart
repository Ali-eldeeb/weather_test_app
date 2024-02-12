import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app_test/controller/details_controller.dart';
import 'package:weather_app_test/service/uttels/Style.dart';

class PresureMax extends StatelessWidget {
  const PresureMax({super.key});

  @override
  Widget build(BuildContext context) {
    DetailsController controller = Get.put(DetailsController()) ;

    return Row(
      children: [
        const Text(
          'Max' ,
          style: Style.textStyle30,
        ) ,
        const Spacer() ,
        Text(
          '${controller.weather.main?.tempMax.toString()} C' ,
          style: Style.textStyle30,
        ) ,

      ],
    ) ;
  }
}
