import 'package:cosmetech/screens/home_screen.dart';
import 'package:cosmetech/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationMenu(),
    );
  }


}