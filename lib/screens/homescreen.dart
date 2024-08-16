import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F4FA),
      body: Center(
           child: Padding(
             padding: const EdgeInsets.only(top: 30,left: 20,right: 20,bottom: 20),
             child: Container(
               height: 800,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(50),
                 boxShadow: [
                   BoxShadow(
                     color: Colors.grey.withOpacity(0.3),
                     spreadRadius: 5,
                     blurRadius: 7,
                   ),
                 ],
               ),
               child: Column(

                 children: [
                   SizedBox(height: 80,),
                   Image(image: AssetImage("images/Credit card-amico.png")),
                   SizedBox(height: 10,),
                   Text(
                     'Safe Payment, Happy You!',
                     style: TextStyle(
                       fontFamily: "Quicksand-VariableFont",
                       fontSize: 25,
                       fontWeight: FontWeight.bold,
                       color: Colors.black87,
                     ),
                     textAlign: TextAlign.center,
                   ),
                   SizedBox(height: 20),
                   Text(
                     'Create a fresh virtual credit card for all your shoppings and banking needs.',
                     style: TextStyle(
                       fontFamily: "Quicksand-VariableFont",
                       fontSize: 19,
                       color: Colors.grey.shade600,
                     ),
                     textAlign: TextAlign.center,
                   ),
                   SizedBox(height: 48,),
                   Container(
                     height: 50,
                     width: 80,
                     child: ElevatedButton(onPressed:(){
                     },
                         style: ElevatedButton.styleFrom(backgroundColor: Colors.purple,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                         child:Text("GO",style: TextStyle(color: Colors.white,fontSize: 20),)
                     ),
                   ),
                 ],
               ),
             ),
           ),
         ),

    );
  }

}