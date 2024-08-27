import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'screens/home_screen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
            () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectIndex.value,
          onDestinationSelected: (index)=> controller.selectIndex.value = index,
          destinations: [
            NavigationDestination(icon:Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon:Icon(Iconsax.shop), label: "Store"),
            NavigationDestination(icon:Icon(Iconsax.heart), label: "Wishlist"),
            NavigationDestination(icon:Icon(Iconsax.user), label: "Profile"),
          ],
        ),
      ),
      body: Obx(()=> controller.Screens[controller.selectIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectIndex = 0.obs;
  final Screens = [const HomeScreen(),Container(color: Colors.blue,),Container(color: Colors.green,),Container(color: Colors.white,)];
}