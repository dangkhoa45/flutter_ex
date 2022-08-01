import 'package:flutter/material.dart';
import 'package:flutter_exercises/config/theme.dart';

import '../../config/listApp.dart';

class ListLogin extends StatefulWidget {
  const ListLogin({Key? key}) : super(key: key);

  @override
  State<ListLogin> createState() => _ListLoginState();
}

class _ListLoginState extends State<ListLogin> {
  int _crr = 0;
    PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Todo App '+(_crr+1).toString(),style: mediumText,),centerTitle: true,),
      body: PageView(
        children: listLoginWidget,
        controller: controller,
        onPageChanged: (num){
          setState(() {
            _crr = num;
          });
        }
      )
    );
  }
}