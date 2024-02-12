import 'package:get/get.dart';
import 'package:weather_app_test/view/deteails_view/details_view.dart';
import 'package:weather_app_test/view/home/home_view.dart';
import 'package:weather_app_test/view/splash_view/splash_screen.dart';

class RoutHelper{
static const String initialSplash ='/' ;
static const String home ='/home' ;
static const String homeDetails ='/homeDetails' ;


static  String getSplashScreen()=>'$initialSplash' ;
static  String getHomeScreen()=>'$home' ;
static  String getHomeDetailsScreen()=>'$homeDetails' ;

static List<GetPage> routs =[

  GetPage(name: initialSplash, page: ()=>SplashView()) ,
  GetPage(name: home, page: ()=>HomeView()) ,
  GetPage(name: homeDetails, page: ()=>DetailsView()) ,




] ;




}