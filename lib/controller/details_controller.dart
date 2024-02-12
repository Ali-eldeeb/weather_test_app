import 'package:get/get.dart';
import 'package:weather_app_test/model/Weather.dart';

class DetailsController extends GetxController {

 late WeatherData  weather  ;

  @override
  void onInit() {
    weather =Get.arguments['model'] ;
    super.onInit();
  }





}






