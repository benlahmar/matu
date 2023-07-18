import 'package:flutter/material.dart';
import 'package:matu/data/offre.data.dart';
import 'package:matu/widgets/matuoffre.widget.dart';

class MyOffre extends StatelessWidget {
  const MyOffre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.amber,
        gradient: LinearGradient(colors: [
          Colors.green,
          Colors.yellow,
          Colors.red
        ]
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (var o in Offred.offres)
            MatuOffre(
              desc: 'aaa',
              icon: o['icon'],
              name: o['name'],
              image: o['image'],
            ),
        ],
      ),
    );
  }
}
