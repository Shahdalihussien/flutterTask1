import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'CartCounter.dart';

class CAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CAppbar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPressed,
    this.showBackArrow = false,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Iconsax.arrow_left),
        )
            : leadingIcon != null
            ? IconButton(
            onPressed: leadingOnPressed,
            icon:  Icon(leadingIcon),
        )
            : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CAppbar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Good day for shopping",style: TextStyle(color: Colors.grey.shade200,fontSize: 15),),
            SizedBox(height: 5,),
            Text("CosmeTech",style: TextStyle(color: Colors.grey.shade200,fontSize: 25,fontWeight: FontWeight.bold),),

          ],
        ),
        actions: [
          CartCounter(onPressed: (){},iconColor: Colors.white,),
        ],
      ),

    );
  }
}

