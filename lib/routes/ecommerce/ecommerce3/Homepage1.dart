import 'package:flutter/material.dart';

// void main(){
//   runApp(MaterialApp(home: Settings3()));
// }

class Homepage1 extends StatelessWidget {
  //const Settings3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60)),
                color: Colors.orange.shade700,
              ),
              child: null,
            ),
          ),
          Positioned(
            right: 60,
            top: 1,
            width: MediaQuery.of(context).size.width / 1.8,
            height: MediaQuery.of(context).size.height / 2.1,
            child: Transform.rotate(
              angle: -3.14 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(120),
                  color: Colors.orange.shade500,
                ),
                child: null,
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 25,
            width: MediaQuery.of(context).size.width / 1.8,
            height: MediaQuery.of(context).size.height / 4,
            child: Container(
              color: Colors.orange.shade500,
              child: null,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 8,
            left: MediaQuery.of(context).size.width / 15,
            width: MediaQuery.of(context).size.width / 1.5,
            height: MediaQuery.of(context).size.height / 4,
            child: Container(
              child: Text("Good Morning Everyone",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35)),
            ),
          ),
          Positioned(
              width: MediaQuery.of(context).size.width/1.2,
              height: MediaQuery.of(context).size.height/15,
              top: MediaQuery.of(context).size.height/3.5,
              left: MediaQuery.of(context).size.width/12,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "      Search...",
                      labelStyle: TextStyle(fontSize: 20,color: Colors.black),
                      suffixIcon: Icon(Icons.search)
                  ),
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height*0.4,
              left: MediaQuery.of(context).size.width/14,
              child: Column(
                children: [
                  Row(
                    children: [
                      Boxfood(),
                      SizedBox(width: 10),
                      Boxfood()
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Boxfood(),
                      SizedBox(width: 10),
                      Boxfood()
                    ],
                  )
                ],
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Today\'s Special',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            label: 'Foods',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class Boxfood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2.4,
      height: MediaQuery.of(context).size.height/5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0,3),
            ),
          ],
          color: Colors.white
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 70,
            width: 70,
            child: Image.network('https://minhcaumart.vn/media/com_eshop/products/2900450.jpg',fit: BoxFit.cover,),
          ),
          Text("Brocoli",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
          Container(
            color: Colors.orange.shade800,
            padding: EdgeInsets.all(5),
            child: Text("\$ 30",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
          )
        ],
      ),
    );
  }
}
