import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Profile5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.purpleAccent,
                          Colors.deepOrange.shade300,
                        ]),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(70),
                        bottomLeft: Radius.circular(70))),
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_back, color: Colors.white),
                          Row(
                            children: [
                              Icon(CupertinoIcons.bell_fill,
                                  color: Colors.white),
                              SizedBox(width: 20),
                              Icon(Icons.menu, color: Colors.white),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text("Date mate",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ],
                ),
              )),
          Positioned(
              height: MediaQuery.of(context).size.height / 13,
              width: MediaQuery.of(context).size.width * 0.9,
              bottom: 20,
              left: MediaQuery.of(context).size.width * 0.05,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.purpleAccent,
                          Colors.deepOrange.shade300,
                        ]),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(CupertinoIcons.person, color: Colors.white),
                        SizedBox(width: 20),
                        Icon(CupertinoIcons.location_solid,
                            color: Colors.white),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(CupertinoIcons.plus, color: Colors.white),
                        SizedBox(width: 20),
                        Icon(Icons.message, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              )),
          Positioned(
              height: MediaQuery.of(context).size.height/6,
              width: MediaQuery.of(context).size.width/2,
              bottom: MediaQuery.of(context).size.height/6,
              left: MediaQuery.of(context).size.width*0.25,
              child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Sasha - 22",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17,color: Colors.black)),
                Container(
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.location_solid),
                      Text("San Diego, California, USA",style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(FontAwesomeIcons.instagram,color: Colors.grey,size: 35),
                    Icon(FontAwesomeIcons.facebook,color: Colors.grey,size: 35),
                    Icon(FontAwesomeIcons.twitter,color: Colors.grey,size: 35)
                  ],
                ),
              ],
            ),
          )),
          Positioned(
              height: MediaQuery.of(context).size.width*0.9,
              width: MediaQuery.of(context).size.width*0.9,
              top: MediaQuery.of(context).size.height/5,
              left: MediaQuery.of(context).size.width*0.05,
              child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network( 'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F1.jpg?alt=media',fit: BoxFit.cover,),
                ),
              )
              ),
          Positioned(
              height: MediaQuery.of(context).size.width*0.07,
              width: MediaQuery.of(context).size.width*0.25,
              top: MediaQuery.of(context).size.height/5.5,
              left: MediaQuery.of(context).size.width*0.4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.yellow,
                ),
                child: Center(child: Text("3.7mi away")),
              )
          ),
          Positioned(
              height: MediaQuery.of(context).size.width*0.2,
              width: MediaQuery.of(context).size.width*0.2,
              bottom: MediaQuery.of(context).size.height*0.05,
              left: MediaQuery.of(context).size.width*0.4,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
            child: Icon(CupertinoIcons.heart_fill,color: Colors.red.shade500,size: 50,),
          ))
        ],
      ),
    );
  }
}
