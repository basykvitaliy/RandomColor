import 'package:flutter/material.dart';
import 'dart:math';

class ColorGenerator{
  static Random random = Random();

  static Color getColor(){
    return Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
  }
}
