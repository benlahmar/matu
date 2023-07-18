import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:matu/pages/auto.page.dart';

// ignore: must_be_immutable
class MatuOffre extends StatelessWidget {

  final  String name;
    final String desc;
   final String image;
   final  Icon icon;
   const MatuOffre( {super.key, required this.name, required this.desc, required this.image, required this.icon});


  

  @override
  Widget build(BuildContext context) {
     
    return Container(
      width: 140,
      height: 160,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(color: Colors.blue, blurRadius: 4, offset: Offset(4, 5))
          ]),
      child: Column(
        children: [
          SizedBox(
            child: Image.asset(
              image,
              height: 60,
              width: 60,
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child:  Text(name),
          ),
          const Divider(
            color: Colors.blue,
          ),
          ElevatedButton.icon(
            icon: icon,
            onPressed: () {
              log('message');
              Navigator.push(context, 
                   MaterialPageRoute(builder: (context) {
	                      return const MyAutooffre();
            }
            )
            );

            }, label: const Text("data"),

      )
  
        ]
      ));

  
  }
}
