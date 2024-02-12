import 'package:get/get.dart';
import 'package:weather_app_test/model/Weather.dart';

import '../service/dio/dio.dart';

class HomeController1 extends GetxController {


WeatherData ? weather  ;
  @override
  void onInit() {
getCurrentWeather();
    super.onInit();
  }

  void getCurrentWeather() {



    DioHelper.getData(
        url: 'weather',
        query: {
          'lat':'30.001464846763074' ,
          'lon':'31.11068553863526',
          'appid':'41126e1e6d5c16497696f63eb86ba408'
        }
    ).then((value) {
      weather=WeatherData.fromJson(value.data) ;
      update();
      print(weather) ;
      //    print(value.data) ;
    }).catchError((onError){
      print(onError);
    });


  }




}






