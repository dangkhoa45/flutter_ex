import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TodoApp1 extends StatelessWidget {
  final List tasks = [
    {
      "title": "Buy computer science book from Agarwal book store",
      "completed": true
    },
    {"title": "Send updated logo and source files", "completed": false},
    {"title": "Recharge broadband bill", "completed": false},
    {"title": "Pay telephone bill", "completed": false},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buidldHeader(),
            SizedBox(height: 40.0),
            Container(
              height: 50,
              padding: const EdgeInsets.only(left: 20.0),
              child: OverflowBox(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Text(
                      "Today",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 45.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Tomorrow",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 45.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.0),
            ...tasks.map((task) => Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  title: Text(
                    task["title"],
                    style: TextStyle(
                        decoration: task['completed']
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                        decorationColor: Colors.red,
                        fontSize: 22.0,
                        color: Colors.black),
                  ),
                ))),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Container(
              height: 50,
              child: Row(
                children: <Widget>[
                  SizedBox(width: 20.0),
                  IconButton(
                    color: Colors.grey.shade700,
                    icon: Icon(Icons.menu, size: 30),
                    onPressed: () {},
                  ),
                  Spacer(),
                  IconButton(
                    color: Colors.grey.shade700,
                    icon: Icon(
                      FontAwesomeIcons.calendarAlt,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(width: 20.0),
                ],
              ))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffFA8165),
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  Container _buidldHeader() {
    return Container(
        height: 250,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              left: -100,
              top: -150,
              child: Container(
                width: 350,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [Color(0xffFA696C), Color(0xffFA8165)]),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffFA8165),
                        offset: Offset(4.0, 4.0),
                        blurRadius: 10.0,
                      )
                    ]),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xffFA8165), Color(0xffFB8964)]),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffFA8165),
                        offset: Offset(1.0, 1.0),
                        blurRadius: 4.0)
                  ]),
            ),
            Container(
                margin: const EdgeInsets.only(top: 60, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Himanshu",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10.0),
                    Text("You have 2 remaining \ntasks for today!",
                        style: TextStyle(color: Colors.white, fontSize: 18.0))
                  ],
                ))
          ],
        ));
  }
}
