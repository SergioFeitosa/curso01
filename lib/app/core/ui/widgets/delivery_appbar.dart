import 'package:flutter/material.dart';

class DeliveryAppbar extends AppBar {
  DeliveryAppbar({
    super.key,
    double elevation = 1,
  }) : super(
            backgroundColor: Colors.white,
            elevation: elevation,
            title: Image.asset(
              'assets/images/logo01.png',
              width: 180,
            ));
}
