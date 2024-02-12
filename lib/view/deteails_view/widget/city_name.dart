import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app_test/controller/details_controller.dart';

import '../../../service/uttels/Style.dart';

class CityDetailsName extends StatelessWidget {
  const CityDetailsName({super.key});

  @override
  Widget build(BuildContext context) {
    DetailsController controller = Get.put(DetailsController()) ;

    return Text(
      '${controller.weather.name.toString()}' ,
      style: Style.textStyle30,
    ) ;
  }
}
