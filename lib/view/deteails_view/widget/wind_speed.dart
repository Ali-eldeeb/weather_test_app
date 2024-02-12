import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app_test/controller/details_controller.dart';
import 'package:weather_app_test/service/uttels/Style.dart';

class WindSpeed extends StatelessWidget {
  const WindSpeed({super.key});

  @override
  Widget build(BuildContext context) {
    DetailsController controller = Get.put(DetailsController()) ;

    return   Row(
      children: [
        Text(
          'Wind speed' ,
          style: Style.textStyle30,
        ) ,
        Spacer() ,
        Text(
          '${controller.weather.wind?.speed.toString()} km' ,
          style: Style.textStyle30,
        ) ,

      ],
    ) ;
  }
}
