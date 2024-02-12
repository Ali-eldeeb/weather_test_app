import 'package:flutter/material.dart';
import 'package:weather_app_test/view/deteails_view/widget/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const DeatailsViewBody()

    );
  }
}
