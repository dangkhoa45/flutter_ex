import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_exercises/config/theme.dart';

class ListProfileApp extends StatelessWidget {
  const ListProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title = "List Profile App";
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(itemBuilder: ((context, index){
              return Row(children: [
                Text(index.toString(), style: largeText,)
              ],);
            }),itemCount: 5,),
          )
        ],
      ),
    );
  }
}