import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app_test/controller/details_controller.dart';
import 'package:weather_app_test/service/uttels/Style.dart';

class PressureRow extends StatelessWidget {
  const PressureRow({super.key});

  @override
  Widget build(BuildContext context) {
    DetailsController controller = Get.put(DetailsController()) ;

    return    Row(
      children: [
        Text(
          'pressure' ,
          style: Style.textStyle30,
        ) ,
        Spacer() ,
        Text(
          '${controller.weather.main?.pressure.toString()}' ,
          style: Style.textStyle30,
        ) ,

      ],
    ) ;
  }
}
