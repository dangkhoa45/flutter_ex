import 'package:flutter/material.dart';

class Profile7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Icon(
            Icons.settings,
            size: 30,
          )
        ]),
        backgroundColor: Colors.orange.shade800,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        child: Icon(Icons.arrow_back_outlined),
        onPressed: (){},
      ),
      body: Stack(
        children: [
          Positioned(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Container(
              color: Colors.orange.shade800,
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(Icons.rocket_launch,
                          size: 120, color: Colors.indigo)),
                  SizedBox(height: 20),
                  Text("Sudip Thapa",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30)),
                  SizedBox(height: 20),
                  Text("Kathmandu",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            height: MediaQuery.of(context).size.height / 2.1,
            width: MediaQuery.of(context).size.width,
            child: Container(color: Colors.white, child: null),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 2.7,
              left: MediaQuery.of(context).size.width * 0.05,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.1,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                        color: Colors.black.withOpacity(0.3),
                      )
                    ],
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("Photos",
                            style: TextStyle(color: Colors.grey, fontSize: 20)),
                        Text("5,000", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    SizedBox(width: 5),
                    Column(
                      children: [
                        Text("Photos",
                            style: TextStyle(color: Colors.grey, fontSize: 20)),
                        Text("5,000", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    SizedBox(width: 5),
                    Column(
                      children: [
                        Text("Photos",
                            style: TextStyle(color: Colors.grey, fontSize: 20)),
                        Text("5,000", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ],
                ),
              )),
          Positioned(
            bottom: 0,
            left: MediaQuery.of(context).size.width*0.1,
            height: MediaQuery.of(context).size.height / 2.8,
            width: MediaQuery.of(context).size.width/1.2,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                      color: Colors.black.withOpacity(0.3),
                    )
                  ],
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 25,
                    ),
                    child: Text("User information",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25)),
                  ),
                  SizedBox(height: 30),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Icon(Icons.gps_fixed,color: Colors.grey,size: 40,),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Location", style: TextStyle(fontSize: 20)),
                            Text("Kathmandu", style: TextStyle(fontSize: 15,color: Colors.grey)),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Icon(Icons.email,color: Colors.grey,size: 40,),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Email", style: TextStyle(fontSize: 20)),
                            Text("sudeptech@gmail.com", style: TextStyle(fontSize: 15,color: Colors.grey)),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
