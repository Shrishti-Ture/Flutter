import 'package:cte_assignment/intro_page.dart';

import 'package:flutter/material.dart';
import 'package:timezone/data/latest.dart' as tz;

void main() {
  tz.initializeTimeZones();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: ImageAsset(),
    home: IntroScreen(),
  ));
}
