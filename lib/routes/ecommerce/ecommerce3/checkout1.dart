import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Boxcheck extends StatelessWidget {
  final String text1;
  final String text2;
  Boxcheck({required this.text1, required this.text2});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.height * 0.075,
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.1,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              text1,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              text2,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class Boxcheck2 extends StatelessWidget{
  final IconData icon;
  final String text;
  Boxcheck2({required this.icon,required this.text});
  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(icon,color: Colors.indigo,size: 25,),
              SizedBox(width: 20),
              Text(text,style: TextStyle(
                fontSize: 18,
              ),)
            ],
          ),
        ),
        Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
class Checkout1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 50),
            Container(
              child: Center(
                child: Text(
                  "Choose your plan",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            //SizedBox(height: 50),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Boxcheck(text1: "Free",text2: "7 days",),
                      Boxcheck( text1: "\$450",text2: "Per week",)
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Boxcheck(text1: '\$900',text2: 'Per month',),
                      Boxcheck(text1: '\$2000',text2: 'Lifetime',)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Container(
              child: Column(
                children: [
                  Boxcheck2(icon: FontAwesomeIcons.paypal,text: "Paypal",),
                  SizedBox(height: 50),
                  Boxcheck2(icon: FontAwesomeIcons.googlePay,text: "Google Pay",),
                  SizedBox(height: 50),
                  Boxcheck2(icon: FontAwesomeIcons.applePay,text: "Apple Pay",),
                ],
              ),
            ),
            SizedBox(height: 50),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.indigo
              ),
              child: Center(child: Text("Continue",style: TextStyle(color: Colors.white,fontSize: 20),),),
            )
          ],
        ),
      ),
    );
  }
}
