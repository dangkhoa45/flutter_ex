import 'package:flutter/material.dart';

class Calendar extends StatelessWidget{
  final List<String> weekDays = ["S", "M", "T", "W", "T", "F", "S"];
  @override
  Widget build(BuildContext context){
    return Row(
      children: weekDays.map((e) =>
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(e.toString()+"\n1",style: TextStyle(color: Colors.black,fontSize: 15)),SizedBox(width: 47),
            ],
          )).toList(),
    );

  }
}

class Event extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("JAN\n10",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
            SizedBox(width: 15),
            Container(
              padding: const EdgeInsets.all(13.0),
              width: 270,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)
                  ),
                  color: Colors.deepPurple.shade100
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("10:30 - 11:30AM",style: TextStyle(color: Colors.deepPurple,fontSize: 15)),
                  Text("Meeting With",style: TextStyle(color: Colors.deepPurple,fontSize: 15,fontWeight: FontWeight.bold)),
                  Text("John Doe",style: TextStyle(color: Colors.black,fontSize: 15))
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

class Event1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("JAN\n10",style: TextStyle(color: Colors.deepPurple,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
            SizedBox(width: 15),
            Container(
              padding: const EdgeInsets.all(12.0),
              width: 270,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)
                  ),
                  color: Colors.deepPurple
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("10:30 - 11:30AM",style: TextStyle(color: Colors.white,fontSize: 15)),
                  Text("Meeting With",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
                  Text("John Doe",style: TextStyle(color: Colors.black,fontSize: 15))
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}