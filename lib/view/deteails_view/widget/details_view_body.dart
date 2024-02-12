import 'package:flutter/material.dart';

import 'package:weather_app_test/view/deteails_view/widget/Pressure_row.dart';
import 'package:weather_app_test/view/deteails_view/widget/city_name.dart';
import 'package:weather_app_test/view/deteails_view/widget/humidity_row.dart';
import 'package:weather_app_test/view/deteails_view/widget/pres_max.dart';
import 'package:weather_app_test/view/deteails_view/widget/pres_min.dart';
import 'package:weather_app_test/view/deteails_view/widget/row_with_image.dart';
import 'package:weather_app_test/view/deteails_view/widget/wind_speed.dart';

class DeatailsViewBody extends StatelessWidget {
  const DeatailsViewBody({super.key});


  @override
  Widget build(BuildContext context) {

    return const Expanded(
      child:  Padding(
        padding:  EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
          
          
          children: [
           RowWithImage(),
           SizedBox(
          height: 15,
            ),
           CityDetailsName(),
           SizedBox(
            height: 15.0,
           ) ,
           HumidityRow() ,
           SizedBox(
          height: 15,
          ) ,
           WindSpeed() ,
           SizedBox(
          height: 15,
          ) ,
           PresureMax() ,
           SizedBox(
          height: 15,
          ) ,
          PresureMin() ,
           SizedBox(
          height: 15,
          ) ,
           PressureRow(),
          ],
          ),
        ),
      ),
    );
  }
}
