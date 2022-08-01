import 'package:flutter/material.dart';

class Auth2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 180,
        ),
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new NetworkImage("https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/food%2Fmeal.jpg?alt=media"),
            fit: BoxFit.cover,
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white.withOpacity(0.7)
          ),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Icon(Icons.local_restaurant,size: 60,),
              Text("Good Food",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.deepOrange)),
              Text("Nutritionally balanced, easy to cook recipes. Quality fresh local ingredients.",style: TextStyle(fontSize: 15,color: Colors.black),textAlign: TextAlign.center,),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: Text("Create Account",style: TextStyle(fontSize: 15,color: Colors.black)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have account? "),
                  Text("Log in",style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              )
            ],
          ),
        ),
        ),
      );

  }
}