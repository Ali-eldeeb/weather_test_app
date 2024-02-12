import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app_test/controller/details_controller.dart';
import 'package:weather_app_test/service/uttels/Style.dart';

class RowWithImage extends StatelessWidget {
  const RowWithImage({super.key});

  @override
  Widget build(BuildContext context) {
    var height =MediaQuery.of(context).size.height *.2 ;
    DetailsController controller = Get.put(DetailsController()) ;

    return   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 200,
          height: 200,

          child: AspectRatio(
            aspectRatio: 2/2,
            child: Container(
              child: Image.asset(
                  'assets/images/icon-01.jpg'
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Column(
          children: [
            const Text(
              'Today' ,
              style: Style.textStyle30,
            ) ,
            const SizedBox(
              height: 5 ,
            ) ,
            const Text(
              // ${controller.weather.weather![].main}
              'clear' ,
              style: Style.textStyle18,
            ) ,
            Text(
              '${controller.weather.main?.temp.toString()} C' ,
              style: Style.textStyle30,
            ) ,


          ],
        )

      ],
    ) ;
  }
}
