import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(home:TodoApp2()));
// }

class TodoApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //title: const Text("Todo2 appbar"),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    // width: 390,
                    width: MediaQuery.of(context).size.width,
                    //color: Colors.blueGrey,
                    padding: const EdgeInsets.all(25.0),
                    child: Text(
                      "JANUARY",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(
                          "M",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(
                          "M",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(
                          "M",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(
                          "M",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(
                          "M",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(
                          "M",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(
                          "1",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(
                          "1",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(
                          "1",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(
                          "1",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(
                          "1",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(
                          "1",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                // decoration: new BoxDecoration(
                //     borderRadius: new BorderRadius.circular(35.0),
                //     color: Colors.deepPurple),
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35.0),
                        bottomRight: Radius.circular(10.0)),
                    color: Colors.deepPurple),
                child: Column(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        // Column(
                        // children: [
                        // Container(
                        //width: MediaQuery.of(context).size.width,
                        //height: MediaQuery.of(context).size.height,
                        //child:
                        Row(
                          children: [
                            Container(
                                //width: MediaQuery.of(context).size.width,
                                //height: MediaQuery.of(context).size.height,
                                padding: const EdgeInsets.all(50.0),
                                // decoration: new BoxDecoration(
                                // borderRadius:
                                // new BorderRadius.circular(35.0),
                                // color: Colors.deepPurple),

                                // decoration: new BoxDecoration(
                                //   borderRadius: BorderRadius.only(
                                //     topLeft: Radius.circular(35.0),
                                //     bottomLeft: Radius.circular(35.0),
                                //     bottomRight: Radius.circular(35.0)
                                //   ),
                                //   color: Colors.deepPurple
                                // ),
                                //   decoration: new BoxDecoration(
                                //       borderRadius: BorderRadius.only(
                                //           topLeft: Radius.circular(35.0),
                                //           bottomRight: Radius.circular(10.0),
                                //           bottomLeft: Radius.circular(10.0)
                                //       ),
                                //       color: Colors.deepPurple,
                                child: Column(
                                  children: [
                                    Text(
                                      "JAN",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Text(
                                      "10",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ],
                                )),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                      padding: const EdgeInsets.all(30.0),
                                      //color: Colors.deepPurple,
                                      // decoration: new BoxDecoration(
                                      // borderRadius:
                                      // new BorderRadius.circular(
                                      // 35.0),
                                      // color:
                                      // Colors.deepPurple.shade100),
                                      decoration: new BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(35.0),
                                              bottomLeft: Radius.circular(35.0),
                                              bottomRight:
                                                  Radius.circular(35.0)),
                                          color: Colors.deepPurple.shade100),
                                      child: Column(
                                        children: [
                                          Text(
                                            "10:30 - 11:30AM",
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 15),
                                          ),
                                          Text(
                                            "Meeting with",
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 15),
                                          ),
                                          Text(
                                            "John Doe",
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 15),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //),

                        // ],
                        // ),
                      ],
                    ),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              //width: MediaQuery.of(context).size.width,
                              //height: MediaQuery.of(context).size.height,
                              child: Row(
                                children: [
                                  Container(
                                      //width: MediaQuery.of(context).size.width,
                                      //height: MediaQuery.of(context).size.height,
                                      padding: const EdgeInsets.all(50.0),
                                      // decoration: new BoxDecoration(
                                      // borderRadius:
                                      // new BorderRadius.circular(35.0),
                                      // color: Colors.deepPurple),

                                      child: Column(
                                        children: [
                                          Text(
                                            "JAN",
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            "10",
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 20),
                                          ),
                                        ],
                                      )),
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            padding: const EdgeInsets.all(30.0),
                                            // //color: Colors.deepPurple,
                                            // decoration: new BoxDecoration(
                                            //     borderRadius:
                                            //     new BorderRadius.circular(
                                            //         35.0),
                                            //     color:
                                            //     Colors.deepPurple.shade100),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "10:30 - 11:30AM",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                ),
                                                Text(
                                                  "Meeting with",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                ),
                                                Text(
                                                  "John Doe",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15),
                                                ),
                                              ],
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              //width: MediaQuery.of(context).size.width,
                              //height: MediaQuery.of(context).size.height,
                              child: Row(
                                children: [
                                  Container(
                                      //width: MediaQuery.of(context).size.width,
                                      //height: MediaQuery.of(context).size.height,
                                      padding: const EdgeInsets.all(50.0),
                                      decoration: new BoxDecoration(
                                          borderRadius:
                                              new BorderRadius.circular(35.0),
                                          color: Colors.deepPurple),
                                      child: Column(
                                        children: [
                                          Text(
                                            "JAN",
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            "10",
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 20),
                                          ),
                                        ],
                                      )),
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            padding: const EdgeInsets.all(30.0),
                                            // //color: Colors.deepPurple,
                                            // decoration: new BoxDecoration(
                                            //     borderRadius:
                                            //     new BorderRadius.circular(
                                            //         35.0),
                                            //     color:
                                            //     Colors.deepPurple.shade100),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "10:30 - 11:30AM",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                ),
                                                Text(
                                                  "Meeting with",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                ),
                                                Text(
                                                  "John Doe",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15),
                                                ),
                                              ],
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              //width: MediaQuery.of(context).size.width,
                              //height: MediaQuery.of(context).size.height,
                              child: Row(
                                children: [
                                  Container(
                                      //width: MediaQuery.of(context).size.width,
                                      //height: MediaQuery.of(context).size.height,
                                      padding: const EdgeInsets.all(50.0),
                                      decoration: new BoxDecoration(
                                          borderRadius:
                                              new BorderRadius.circular(35.0),
                                          color: Colors.deepPurple),
                                      child: Column(
                                        children: [
                                          Text(
                                            "JAN",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            "10",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ],
                                      )),
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            padding: const EdgeInsets.all(30.0),
                                            //color: Colors.deepPurple,
                                            // decoration: new BoxDecoration(
                                            // borderRadius:
                                            // new BorderRadius.circular(
                                            // 35.0),
                                            // color:
                                            // Colors.deepPurple.shade100),
                                            decoration: new BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(35.0),
                                                    bottomLeft:
                                                        Radius.circular(35.0),
                                                    bottomRight:
                                                        Radius.circular(35.0)),
                                                color:
                                                    Colors.deepPurple.shade100),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "10:30 - 11:30AM",
                                                  style: TextStyle(
                                                      color: Colors.deepPurple,
                                                      fontSize: 15),
                                                ),
                                                Text(
                                                  "Meeting with",
                                                  style: TextStyle(
                                                      color: Colors.deepPurple,
                                                      fontSize: 15),
                                                ),
                                                Text(
                                                  "John Doe",
                                                  style: TextStyle(
                                                      color: Colors.deepPurple,
                                                      fontSize: 15),
                                                ),
                                              ],
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              //width: MediaQuery.of(context).size.width,
                              //height: MediaQuery.of(context).size.height,
                              child: Row(
                                children: [
                                  Container(
                                      //width: MediaQuery.of(context).size.width,
                                      //height: MediaQuery.of(context).size.height,
                                      padding: const EdgeInsets.all(50.0),
                                      decoration: new BoxDecoration(
                                          borderRadius:
                                              new BorderRadius.circular(35.0),
                                          color: Colors.deepPurple),
                                      child: Column(
                                        children: [
                                          Text(
                                            "JAN",
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            "10",
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 20),
                                          ),
                                        ],
                                      )),
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            padding: const EdgeInsets.all(30.0),
                                            // //color: Colors.deepPurple,
                                            // decoration: new BoxDecoration(
                                            //     borderRadius:
                                            //     new BorderRadius.circular(
                                            //         35.0),
                                            //     color:
                                            //     Colors.deepPurple.shade100),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "10:30 - 11:30AM",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                ),
                                                Text(
                                                  "Meeting with",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                ),
                                                Text(
                                                  "John Doe",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15),
                                                ),
                                              ],
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
