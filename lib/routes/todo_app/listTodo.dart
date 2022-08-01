import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_exercises/config/listApp.dart';
import 'package:flutter_exercises/config/theme.dart';

class ListTodoApp extends StatefulWidget {
  const ListTodoApp({Key? key}) : super(key: key);

  @override
  State<ListTodoApp> createState() => _ListTodoAppState();
}

class _ListTodoAppState extends State<ListTodoApp> {
  String title = "List Todo App";
  
  int _crr = 0;
  PageController controller = PageController();
 @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('Todo App '+(_crr+1).toString(),style: mediumText,),centerTitle: true,),
      body: PageView(
        children: listTodoWidget,
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