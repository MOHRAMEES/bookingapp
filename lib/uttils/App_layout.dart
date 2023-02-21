import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Applayout {
  static getsize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getscreenHight() {
    return Get.height;
  }

  static getscreenwidth() {
    return Get.width;
  }

  static getHight(double pixels) {
    double x = getscreenHight() / pixels;
    return getscreenHight() / x;
  }
   static GetWidth(double pixels) {
    double x = getscreenwidth() / pixels;
    return getscreenwidth() / x;
  }
}
