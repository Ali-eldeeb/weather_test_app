import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app_test/service/uttels/Style.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(

          top: 40.0 ,
          bottom: 20.0
      ),
      child: Row(

        children: [
        Container(
          child: Text(
            'Welcome' ,
            style: Style.textStyle20,
              ),
        ) ,
          const Spacer(),
          IconButton(
              onPressed: (){
                Get.toNamed('/searchView') ;

              },

              icon:Icon(
              Icons.dark_mode_outlined,
                size: 24,
              )
          ) ,

        ],
      ),
    );
  }
}
