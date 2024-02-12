import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app_test/controller/home_controller.dart';
import 'package:weather_app_test/service/uttels/Style.dart';
import 'package:weather_app_test/service/uttels/assets.dart';
import 'package:weather_app_test/view/home/widget/city_name.dart';
import 'package:weather_app_test/view/home/widget/custome_text.dart';
import 'package:weather_app_test/view/home/widget/min_and_max_temp.dart';
import 'package:weather_app_test/view/home/widget/temperture.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
   var controller = Get.put(HomeController1()) ;
    var height=MediaQuery.of(context).size.height*.2 ;
    return GestureDetector(

      onTap: (){
          Get.toNamed(
              '/detailsView' ,
            arguments:{
                'model':controller.weather
            }
          ) ;
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const AspectRatio(
                aspectRatio:2/2 ,
                child: Image(image: AssetImage(
                  AssetData.clearWind
                )
                )),

            const CityName(),
          GetBuilder<HomeController1>(
            init: HomeController1(),
            builder: (controller)=> CustomeText(
              text: "${controller.weather?.timezone.toString()??""}",
              style: Style.textStyle30,
            ),
          ) ,
            const TemperatureNow() ,
            const SizedBox(
              height: 10.0,
            ),
            const MinAndMaxTemp()
          ],
        ),
      ) ;

  }



}


// ${controller.weather['coord']}