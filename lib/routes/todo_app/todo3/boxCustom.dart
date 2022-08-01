import 'package:flutter/material.dart';
import 'package:flutter_exercises/config/theme.dart';

class BoxCustom extends StatelessWidget {
  final IconData icon;
  final String text;
  const BoxCustom({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon,color: Colors.white,),
              Text(text,style: smallTextWhite,),
            ],
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(
            icon,
            size: 50,
            color: Colors.white70.withOpacity(0.25),
          ),
        ),
      ),
      
    ]);
  }
}
