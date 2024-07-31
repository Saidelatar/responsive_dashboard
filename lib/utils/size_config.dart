import 'package:flutter/material.dart';

class SizeConfig {
  static double desktop = 1200;
  static double tablet = 800;

  static late double height, width;

  static init(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
  }
}
