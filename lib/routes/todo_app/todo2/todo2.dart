import 'package:flutter/material.dart';
import 'package:flutter_exercises/routes/todo_app/todo2/widget2.dart';

class TodoApp2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.deepPurple,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(25.0),
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30.0)
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("January".toUpperCase(),style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                        SizedBox(height: 20),
                        Calendar()
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height:  MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(25.0),
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                  ),
                  color: Colors.deepPurple
              ),
              child: Column(
                children: [
                  Event(),
                  Event1(),
                  Event1(),
                  Event(),
                  Event1(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}