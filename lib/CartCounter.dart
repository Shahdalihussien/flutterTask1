import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartCounter extends StatelessWidget {
  const CartCounter({

    super.key,
    required this.onPressed,
    required this.iconColor ,
  });
  final Color  iconColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: (){}, icon: Icon(Iconsax.shopping_bag,color: Colors.white,size: 35,),),
        Positioned(right: 0,child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(150),
          ),
          child: Center(
            child: Text("2",style: TextStyle(color: Colors.white,fontSize: 16),),
          ),
        ),
        ),

      ],
    );
  }
}
