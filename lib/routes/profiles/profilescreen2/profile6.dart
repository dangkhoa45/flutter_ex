import 'package:flutter/material.dart';
import 'dart:ui';
class Profile6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2Fbackdrop.png?alt=media'),
            fit: BoxFit.cover,
          ),
        ),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.black.withOpacity(0.2),
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 3,
                            color: Colors.grey
                        ),
                        borderRadius: BorderRadius.circular(90)
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(90),
                      child: Image.network( 'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F1.jpg?alt=media',fit: BoxFit.cover,),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "CimpleSid",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width/2,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 2,
                                  color: Colors.white
                              )
                          )
                      ),
                      child: Text("Mahendranagar, Nepal",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white))
                  ),
                  Text("Siddhartha  Joshi is a Flutter dev Lorem Ipsum is simply dummy text of the printing and typesetting industry. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",style: TextStyle(fontSize: 15,color: Colors.white)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Boxvideo(),
                      Boxvideo()
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 10
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Text(
                          "BACK",
                          style: TextStyle(fontSize: 15,color: Colors.white),
                        ),
                      ),
                    ]
                  )
                ],
              )
            ),
          ),
        ),
      )

    );
  }
}

class Boxvideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      height: MediaQuery.of(context).size.height/3.5,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width/2.7,
            height: 100,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network( 'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F1.jpg?alt=media',fit: BoxFit.cover,),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Icon(Icons.play_arrow,color: Colors.white,),
                  ),
                )
              ],
            )
          ),
          SizedBox(height: 10),
          Text("WIFI hacking part 1",style: TextStyle(fontSize: 17,color: Colors.white))
        ],
      ),
    );
  }
}
